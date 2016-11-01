driver_version=367.48
sh /mnt/NVIDIA-Linux-x86_64-$driver_version.run -x
mv NVIDIA-Linux-x86_64-$driver_version /usr/local/
sh /mnt/links.sh $driver_version

sh /mnt/cuda-linux64-rel-8.0.44-21122537.run  --toolkit --silent
tar xvf /mnt/cudnn-7.0-linux-x64-v4.0-prod.tar -C /usr/local

driver_path=/usr/local/NVIDIA-Linux-x86_64-$driver_version
echo "LD_LIBRARY_PATH=/usr/local/cuda/lib64:$driver_path:$LD_LIBRARY_PATH" >> /environment
echo "PATH=$driver_path:\$PATH" >> /environment
echo "export PATH LD_LIBRARY_PATH" >> /environment
