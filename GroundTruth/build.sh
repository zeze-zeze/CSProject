#!/bin/bash
set -e
#meet error then stop
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
#echo $(whoami)
version=${1}
echo $version
test -e /media/openwrt${1} && echo "mount dir exist..." || mkdir /media/openwrt${1}
#mount dir build
#find image
image=$(ls ../source/$version | grep root.ext4)
echo imagename=$image
if mount | grep "/media/openwrt${1} " > /dev/null; then
	echo "mounted"
else
	echo "unmount"
	mount -o loop ../source/$version/$image /media/openwrt${1}
fi
#mount image (path still unknown) 
echo "building..."
pwd=$(pwd)
echo $pwd
cd /media/openwrt${1}/usr/lib/opkg/info
#grep -r ".*\.so.*" * | cut -d . -f 1 | uniq
pathinfo=($(grep -r ".*\.so.*" * | cut -d : -f2))
binaryinfo=($(grep -r ".*\.so.*" * | cut -d . -f1))
num=${#binaryinfo[@]}

packagename=($(grep -r ".*\.so.*" * | cut -d . -f 1 | uniq))
echo "package number=${#packagename[@]}"
packagename_num=${#packagename[@]}

packageinfo=($(cat ../status | grep -A1 "Package: " | cut -d " " -f 2))
#package + version (0 1 2) (3 4 5) (6 7 8)

infonum=${#packageinfo[@]}
#echo $((infonum/3))

cd $pwd
for i in $(seq 0 $((packagename_num-1)));
do
	if test -e ./${packagename[i]}; then
		echo "exist" > /dev/null
	else
		mkdir ${packagename[i]}
		#echo "hahaha"
	fi
	for j in $(seq 0 $((infonum/3)));
	do
		if [ "${packageinfo[j*3]}" == "${packagename[i]}" ]; then
			#echo "hi"
			test -e ./${packagename[i]}/${packageinfo[j*3+1]} && echo "dir exist" > /dev/null || mkdir ./${packagename[i]}/${packageinfo[j*3+1]}
			for k in $(seq 0 $((num-1)));
			do
				if [ "${binaryinfo[k]}" == "${packagename[i]}" ]; then
					binaryinfo[k]="${binaryinfo[k]}/${packageinfo[j*3+1]}"
					#echo ${binaryinfo[k]}
				fi
			done
			break;
		fi	
	done
done
for i in $(seq 0 $((num-1)));
do
	#echo ${pathinfo[i]}
	cp -n /media/openwrt${1}/${pathinfo[i]} ./${binaryinfo[i]}/
	if ! grep $version ./${binaryinfo[i]}/openwrtversion.txt > /dev/null 2>&1; then
		echo $version >> ./${binaryinfo[i]}/openwrtversion.txt
		echo "openwrtverion write..."
	fi
done
umount /media/openwrt$version
