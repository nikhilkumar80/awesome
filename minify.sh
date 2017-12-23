#!/bin/sh

#usage: minify.sh source_dir
#Iterate trough the source folder and minify all the files move it to source dir + '-min' folder
SRC_DIR=$1;
DEST_DIR=$SRC_DIR"-min";
`mkdir $DEST_DIR`
for file in $SRC_DIR"/"* ;
do
	EXT="${file##*.}";
	BASEN=`basename $file .$EXT`;
	`java -jar /home/y/bin/yuicompressor.jar  $file -o $DEST_DIR"/"$BASEN"-min."$EXT`
done
