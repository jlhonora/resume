#!/usr/bin/env bash

build_all=0
build_resume=0
build_cover=0

case "$1" in
resume )
	build_resume=1 
	;;
cover )
	build_cover=1 
	;;
* )
	build_resume=1
	build_cover=1
	build_all=1 
	;;
esac
	
if [ $build_resume -gt 0 ]
then
	echo "Building resume"
	xelatex resume.tex
fi

if [ $build_cover -gt 0 ]
then
	echo "Building cover letter"
	xelatex cover.tex
fi

if [ $build_all -gt 0 ]
then
	echo "Stitching"
	xelatex all.tex
fi
