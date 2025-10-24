#!/bin/bash
echo "copying images from planktoscope to local machine..."
rsync -hazv pi@192.168.4.1:data/img ~/.local/share/planktoscope/data
