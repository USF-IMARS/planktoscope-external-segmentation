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
