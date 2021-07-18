#!/bin/sh

mkdir pics &
cd pics && rm -rf *.png && cd .. &&
groff -e -ms -T html "geom.ms" > geom.html &&
sed -i "s/\"grohtml/\"pics\/grohtml/g" geom.html && mv *.png pics
