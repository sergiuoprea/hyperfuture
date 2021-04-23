docker run --gpus '"device=1"' --rm -it -d --shm-size 8G -v /home/soprea:/src \
                                                         -v /mnt/md1/datasets/kinetics:/src/datasets/kinetics \
                                                         -v /mnt/md1/datasets/hyperfuture:/src/datasets/hyperfuture \
                                                         --name hyperfuture hyperfuture