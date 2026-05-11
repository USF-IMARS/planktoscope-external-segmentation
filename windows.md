# Installation

A windows-subsystem-for-linux (wsl) image was created by installing the application on a wsl ubuntu image and using `wsl --export Ubuntu planktoscope-segmenter.tar`.

This image can be used on a new windows system:

1. open a powershell terminal with 'run as administrator'
2. type `wsl --install` and press enter. After answering a few questions you will arrive at a bash prompt. Press `ctrl+d` to exit the bash prompt and return to a PowerShell prompt.
3. download the file to `Downloads\planktoscope-segmenter.tar` from [here](https://usf.box.com/s/mh3akpt54y9nzdqbno1ol8cdwzbq9a44)
8. `wsl --import planktoscope-segmenter .\Desktop\planktoscope-segmenter .\Downloads\planktoscope-segmenter.tar` to install the wsl
9. `wsl` to access the wsl CLI
10. `sudo docker ps` should show the running docker containers
11. Administrator privileges must be granted to each user. 


# Usage
1. Search in the taskbar for `WSL` and run the program as administrator
2. A window should pop open and print a few messages. The last message should say "updating package deployment ... node-red ...". Once you see this message press (ctrl+c) to stop the process. (You may need to press it a few times). You will now have a bash terminal to use.
2. open a web browser to [localhost:1880/ui](localhost:1880/ui)
3. You can now follow the instructions in the main README
