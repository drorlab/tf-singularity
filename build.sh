IMG="tf-gpu.img"
DEF="tf-gpu.def"
echo "Removing old image file"
sudo rm -f $IMG
echo "Creating new image file"
sudo singularity create -s 4000 $IMG
echo "Bootstrapping image using docker"
sudo singularity bootstrap $IMG $DEF
echo "Executing tensorflow.sh to install NVIDIA/CUDA/CuDNN"
sudo singularity exec -B `pwd`:/mnt -w $IMG sh /mnt/tensorflow.sh 
echo "Executing sherlock.sh to prepare for Sherlock environment"
sudo singularity exec  -B `pwd`:/mnt -w $IMG sh /mnt/sherlock.sh
echo "Exiting build.sh"
