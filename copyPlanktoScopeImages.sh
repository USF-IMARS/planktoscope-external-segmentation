#!/bin/bash
echo "copying images from planktoscope to local machine..."
echo "(press ctrl+c to cancel)"
rsync -hazv pi@192.168.4.1:data/img ~/.local/share/planktoscope/data
