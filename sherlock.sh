# Because sherlock doesn't enable singularity overlay, we must create these
# before moving container to sherlock.
echo "About to make directories needed on sherlock"
mkdir -p /share/PI
mkdir -p /scratch
mkdir -p /local-scratch
