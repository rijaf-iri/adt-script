#!/usr/bin/env bash

adt_inst=~/adt_installation
pat_file=~/.GITHUB_PAT

if [ ! -f $github_pat ]; then
    echo "File $pat_file does not exist."
    exit 0
fi
if [ ! -d $adt_inst ]; then
    mkdir $adt_inst
fi

cd $adt_inst
github_pat=`cat $pat_file`
str1="https://"
str2="@github.com/rijaf-iri/kmdawsParser.git"
url_inst="$str1$github_pat$str2"
git clone $url_inst
