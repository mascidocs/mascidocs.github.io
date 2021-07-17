#!/bin/sh

mkdir pics &
rm -rf *.png &&
groff -e -ms -T html "geom.ms" > geom.html &&
sed -i "s/\"grohtml/\"pics\/grohtml/g" geom.html && mv *.png pics

