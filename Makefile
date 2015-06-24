l4t_prepared_anchor: l4t_kernel_rootfs_anchor
	cd ./l4t_kernel/ && sudo ./apply_binaries.sh && cd -
	touch $@

l4t_kernel_rootfs_anchor: l4t_kernel_rootfs_src.tar.bz2
	sudo tar xf $< -C l4t_kernel/rootfs/
	touch $@

l4t_kernel_rootfs_src.tar.bz2: l4t_kernel
	wget http://developer.download.nvidia.com/embedded/L4T/r21_Release_v3.0/Tegra_Linux_Sample-Root-Filesystem_R21.3.0_armhf.tbz2 -O $@

l4t_kernel: l4t_kernel_src.tar.bz2
	mkdir $@
	tar xf $< -C $@ --strip 1

l4t_kernel_src.tar.bz2:
	wget http://developer.download.nvidia.com/embedded/L4T/r21_Release_v3.0/Tegra124_Linux_R21.3.0_armhf.tbz2 -O $@

all: l4t_prepared_anchor

.PHONY: all
