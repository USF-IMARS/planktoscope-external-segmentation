This linux (ubuntu) machine is used to segement images from a planktoScope for submission to EcoTaxa.

To do this:

1. Planktoscope must be on and connected (via wifi)
    * wifi settings are in top right on ubuntu
4. Run the `copyPlanktoScopeImages.sh` script [1]
    * if asked "are you sure" type `yes` & enter
    * this will prompt for the PlanktoScope password. 
      * NOTE: nothing will show while typing the password.
      * NOTE: To interrupt a running command press (ctrl+c)
6. Wait for the files to transfer from the PlanktoScope to the desktop
7. Open the Segmenter GUI at `http://localhost:1880/ui`
    * there should be bookmark in firefox 
    * "Update acquisition's folder list" & select image folders
    * Click "start segmentation". 
9. Once finished, `.zip` files will be `~/.local/share/planktoscope/data/export`
     * this is a hidden directory (press `ctrl+h` in the file browser to reveal hidden files.
11. Upload files to EcoTaxa using FTP (filezilla) & use the EcoTaxa website to complete.
     * see [the PlanktoScope protocol](https://www.protocols.io/view/planktoscope-protocol-for-plankton-imaging-bp2l6bq3zgqe/v4?version_warning=no&step=15)
12. Upload the raw images to box.com for backup
13. Cleanup files on desktop & planktoscope
     * Delete all files from the desktop by running `~/cleanupPlanktoScopeFiles.sh`.
     * planktoscope files should be managed through the planktoscope GUI "gallery"
14. Use the planktoscope GUI to shutdown (button on "home" screen). After waiting press power button on planktoscope.

[1] There are two ways to run these scripts:
    1. Open a terminal on the desktop (ctrl+alt+t), type  `./copyPlanktoScopeImages.sh` and press enter
       * NOTE: use "tab completion" to make this easier
    2. Right click the shortcut on the deskop & select "run as program"


## Other Notes
This process uses [PlanktoScope/pallet-segmenter](https://github.com/PlanktoScope/pallet-segmenter); more technical documentation can be found there.

### Re-Segmenting
NOTE: test on 2025-08-06 showed force rework does not force re-segmenting as docs indicate it should.
To detect already-segmented images, the segmenter checks for a file in the img directory called `done.txt`.
To force re-segmenting delete `done.txt` in the relevant img directory.
