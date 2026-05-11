# Usage
1. Search in the taskbar for `WSL` and run the program as administrator
2. A window should pop open and print a few messages. The last message should say "updating package deployment ... node-red ...". Once you see this message press (ctrl+c) to stop the process. (You may need to press it a few times). You will now have a bash terminal to use.
2. open a web browser to [localhost:1880/ui](localhost:1880/ui)
3. You can now follow the instructions in the main README


# Installation

A windows-subsystem-for-linux (wsl) image was created by installing the application on a wsl ubuntu image and using `wsl --export Ubuntu planktoscope-segmenter.tar`.

This image can be used on a new windows system:

1. open a powershell terminal with 'run as administrator'
2. `wsl --install`
3. download the file to `Downloads\planktoscope-segmenter.tar` from [here](https://usf.box.com/s/mh3akpt54y9nzdqbno1ol8cdwzbq9a44)
4. `cd ~\Downloads`
5. `New-Item -ItemType Directory -Path "$env:USERPROFILE\WSL" -Force` to ensure `~/WSL/ exists`
6. `wsl --import planktoscope-segmenter C:\Users\tylarmurray\WSL\planktoscope-segmenter .\planktoscope-segmenter.tar` to install the wsl
    * NOTE: you must **modify to use your username**. The `wsl` program does not work with `~/`.
8. `wsl -d planktoscope-segmenter` to access the wsl CLI
9. `sudo docker ps` should show the running docker containers

Administrator privileges must be granted to each user
