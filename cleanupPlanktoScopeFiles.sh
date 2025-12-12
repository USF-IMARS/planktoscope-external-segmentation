#!/bin/bash
echo "⚠️  This will delete all files from this local machine related to the Planktoscope."
read -p "Press ENTER if you are sure (or Ctrl+C to cancel)..." 
rm -rf ~/.local/share/planktoscope/data/clean/*
rm -rf ~/.local/share/planktoscope/data/export/*
rm -rf ~/.local/share/planktoscope/data/img/*
rm -rf ~/.local/share/planktoscope/data/objects/*
