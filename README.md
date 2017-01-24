# Pre-requisites

## Host OS

You need to run on a Linux OS where you have root access and yum installed.  My
personal machine was MacOS, so I first installed virtualbox, vagrant, and
vagrant-manager.  Then I create an ubuntu 14.04 VM using vagrant, and installed
singualrity 2.2 on it.  See instructions here
http://singularity.lbl.gov/install-mac.   Finally, I installed yum via `sudo
apt-get install yum`.

## NVIDIA, CUDA

Get cuda and nvidia *.run scripts matching those currently on sherlock.  As of
10-31-16, these were cuda 8.0, and nvidia drivers 367.48 .  They were obtained
from https://developer.nvidia.com/cuda-downloads, under the linux centOS 6
downloads for cuda 8.  This gives you the CUDA driver, from which you can
extract the NVIDIA driver by running `sh cuda_8.0.44_linux.run
--extract=/path/to/extract` Place the two *.run scripts within this directory.

## cuDNN

The cuDNN version downloaded was cuDNN 8.0 v5.1, which was obtained from
https://developer.nvidia.com/rdp/cudnn-download, under cuDNN 8.0 v5.1 Library for Linux.
Place the resulting .tar file within this directory.

# Usage

From this directory, simply run `sh build.sh`, and then move the resulting
tf-gpu.img onto sherlock (it is 4GB so it may take a while).  You will then be
able to run python with the latest version of GPU-enabled tensorflow by running
`module load singularity` and then `singularity run tf-gpu.img`.

You can confirm you have access to a GPU by running
```
import tensorflow as tf
tf.Session(config=tf.ConfigProto(log_device_placement=True))
```

# Origin

Adapted from Jianxiong Dong's scripts at
https://github.com/jdongca2003/Tensorflow-singularity-container-with-GPU-support
, as well as Igor and Tru Huynh's advice on the singularity google group at
https://groups.google.com/a/lbl.gov/forum/#!topic/singularity/CezfXNjLGe0 .  For
use on Stanford sherlock cluster, which runs CentOS 6.7.
