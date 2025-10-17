This linux (ubuntu) machine is used to segement images from a planktoScope for submission to EcoTaxa.

To do this:

1. Planktoscope must be on and connected (via wifi)
2. Open a terminal on the desktop (ctrl+alt+t)
3. Type `./copyPlanktoScopeImages.sh` and press enter
    * if asked "are you sure" type `yes` & enter
    * this will prompt for the PlanktoScope password. 
      * NOTE: nothing will show while typing the password.
      * NOTE: use "tab completion" to make this easier
      * NOTE: To interrupt a running command press (ctrl+c)
5. Wait for the files to transfer from the PlanktoScope to the desktop
6. Open the Segmenter GUI at `http://localhost:1880/ui`
    * "Update acquisition's folder list" & select image folders
    * Click "start segmentation"
7. Once finished, `.zip` files will be `~/.local/share/planktoscope/data`
8. Upload files to EcoTaxa using FTP (filezilla) & use the EcoTaxa website to complete.
     * see [the PlanktoScope protocol](https://www.protocols.io/view/planktoscope-protocol-for-plankton-imaging-bp2l6bq3zgqe/v4)
9. Upload the raw images to box.com for backup
10. cleanup files on desktop & planktoscope
     * Delete all files from the desktop by running `~/cleanupPlanktoScopeFiles.sh`.
     * planktoscope files should be managed through the planktoscope GUI



## Other Notes
### Re-Segmenting
NOTE: test on 2025-08-06 showed force rework does not force re-segmenting as docs indicate it should.
To detect already-segmented images, the segmenter checks for a file in the img directory called `done.txt`.
To force re-segmenting delete `done.txt` in the relevant img directory.
