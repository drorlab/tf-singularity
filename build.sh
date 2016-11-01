IMG="tf-gpu.img"
DEF="tf-gpu.def"
sudo rm -f $IMG
sudo singularity create -s 4000 $IMG
sudo singularity bootstrap $IMG $DEF
sudo singularity exec -B `pwd`:/mnt -w $IMG sh /mnt/tensorflow.sh 
sudo singularity exec  -B `pwd`:/mnt -w $IMG sh /mnt/sherlock.sh
