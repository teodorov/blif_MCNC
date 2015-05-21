#!/bin/bash
ABC=~/Playfield/repositories/abc/abc

BLIF_SOURCE=MCNC-big20-original
BLIF_TARGET=../MCNC-big20-lut

cd $BLIF_SOURCE
for blifFile in *.blif; do
	$ABC -q "read_blif $blifFile; if -K 2; write_blif ${BLIF_TARGET}2/$blifFile"  -x -s
	$ABC -q "read_blif $blifFile; if -K 3; write_blif ${BLIF_TARGET}3/$blifFile"  -x -s
	$ABC -q "read_blif $blifFile; if -K 4; write_blif ${BLIF_TARGET}4/$blifFile"  -x -s
	$ABC -q "read_blif $blifFile; if -K 5; write_blif ${BLIF_TARGET}5/$blifFile"  -x -s
	$ABC -q "read_blif $blifFile; if -K 6; write_blif ${BLIF_TARGET}6/$blifFile"  -x -s
	$ABC -q "read_blif $blifFile; if -K 7; write_blif ${BLIF_TARGET}7/$blifFile"  -x -s
	$ABC -q "read_blif $blifFile; if -K 8; write_blif ${BLIF_TARGET}8/$blifFile"  -x -s
done