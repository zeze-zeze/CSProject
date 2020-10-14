#!/bin/bash

TargetVersion(){
    wget -r -np --level=1 --reject="index.html,index.html.tmp" https://downloads.openwrt.org/releases/
    test -e ./openwrt/versions && rm ./openwrt/versions
    ls -alF ./downloads.openwrt.org/releases | awk '{print $9}' | grep "^[0-9]" | cut -d / -f 1 >> ./openwrt/versions
    rm -r downloads.openwrt.org
}

TargetSource(){
    test -e ./openwrt/source && rm ./openwrt/source
    cat ./openwrt/versions | awk '{print "https://github.com/openwrt/openwrt/archive/v"$0".zip"}' >> ./openwrt/source
}

TargetImage(){
    test -e ./openwrt/images && rm ./openwrt/images
    for ((i=1; i<=`cat ./openwrt/versions | wc -l`; i++))
    do
        version=`cat ./openwrt/versions | sed -n $i"p"`
        wget -r -np --level=1 --reject="index.html,index.html.tmp" "https://downloads.openwrt.org/releases/"$version"/targets/armvirt/"
        test -e types && rm types
        ls -alF downloads.openwrt.org/releases/$version/targets/armvirt | awk '{print $9}' | grep "^[a-z0-9]" | cut -d / -f 1 >> types
        for ((j=1; j<=`cat types | wc -l`; j++))
        do
            echo "https://downloads.openwrt.org/releases/"$version"/targets/armvirt/"`cat types | sed -n $j"p"`"/" >> ./openwrt/images
        done
        rm types
        rm -r downloads.openwrt.org
    done 
}

Target(){
    test -e openwrt && openwrt_exist=1 || openwrt_exist=0
    if [ "$openwrt_exist" = "1" ]
    then
        echo "openwrt exist"
    else
        echo "Getting the target list ..."
        mkdir openwrt
        TargetVersion
        TargetSource
        TargetImage
    fi
}

Target
