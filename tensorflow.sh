driver_version=367.48
cuda="cuda-linux64-rel-8.0.44-21122537.run"
cudnn="cudnn-8.0-linux-x64-v5.1.tgz"
echo "About to execute driver run file"
sh /mnt/NVIDIA-Linux-x86_64-$driver_version.run -x
echo "Moving generated driver executable to /usr/local"
mv NVIDIA-Linux-x86_64-$driver_version /usr/local/
echo "About to execute linking file"
sh /mnt/links.sh $driver_version

echo "About to execute cuda run file"
sh /mnt/$cuda  --toolkit --noprompt
echo "Unpacking cudnn files to /usr/local"
tar xvf /mnt/$cudnn -C /usr/local

echo "Adding paths to /environment"
driver_path=/usr/local/NVIDIA-Linux-x86_64-$driver_version
# Add newline before appending to /environment file
echo " " >> /environment
echo "LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64:$driver_path:$LD_LIBRARY_PATH" >> /environment
echo "PATH=$driver_path:\$PATH" >> /environment
echo "export PATH LD_LIBRARY_PATH" >> /environment
