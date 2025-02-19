#!/bin/bash
set -e

read -rep "download and unzip lfw-faces data? (y/n): " ans
if [ $ans == "y" ]; then
  # get lfw-faces data
  cd ./data
  wget -O lfwcrop_grey.zip http://conradsanderson.id.au/lfwcrop/lfwcrop_grey.zip
  unzip -o lfwcrop_grey.zip
  mv lfwcrop_grey.zip lfwcrop_grey
  cd ..
fi

read -rep "pre-process lfw-faces into numpy binary? (y/n): " ans
if [ $ans == "y" ]; then
  python3 pre_process_faces.py
fi
