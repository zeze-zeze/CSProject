#!/bin/bash

DownloadPackageInfo(){
    version=${1}
    curl https://downloads.openwrt.org/releases/$version/packages/arm_cortex-a15_neon-vfpv4/base/Packages >> ./openwrt/$version/package-info
}

DownloadSource(){
    version=${1}
    url=${2}
    wget $url -O ./openwrt/$version/openwrt-$version.zip
    unzip ./openwrt/$version/openwrt-$version.zip -d ./openwrt/$version
    rm ./openwrt/$version/openwrt-$version.zip
}

DownloadImage(){
    version=${1}
    url=${2}
    wget -r --accept-regex "ext4" --reject="index.html,index.html.tmp" $url -P ./openwrt/$version/
    echo $url | cut -c 9-
    gunzip ./openwrt/$version/`echo $url | cut -c 9-`*ext4*
    mv ./openwrt/$version/`echo $url | cut -c 9-`*ext4* ./openwrt/$version
    rm -r ./openwrt/$version/downloads.openwrt.org/
}

Download(){
    version=${1}
    if [ "$version" = "" ]
    then
        for ((i=1; i<=`cat ./openwrt/versions | wc -l`; i++))
        do
            version=`cat ./openwrt/versions | sed -n $i"p"`
            echo "Downloading $version ..."
            test -e ./openwrt/$version && echo "$version exist!" && continue
            mkdir ./openwrt/$version
            DownloadPackageInfo $version
            DownloadSource $version `cat ./openwrt/source | grep $version | sed -n 1p`
            DownloadImage $version `cat ./openwrt/images | grep $version"/" | sed -n 1p`
        done
    else
        if [ `cat ./openwrt/versions | grep $version | wc -l` = "0" ]
        then
            echo "No such version !"
        else 
            echo "Downloading $version ..."
            test -e ./openwrt/$version && echo "$version exist!" && return
            mkdir ./openwrt/$version 
            DownloadPackageInfo $version
            DownloadSource $version `cat ./openwrt/source | grep $version | sed -n 1p`
            DownloadImage $version `cat ./openwrt/images | grep $version"/" | sed -n 1p`
        fi

    fi
}
