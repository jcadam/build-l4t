function flash()
{
    cd ./l4t_kernel/ && sudo ./flash.sh jetson-tk1 mmcblk0p1
    cd -
}
