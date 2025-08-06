This linux (ubuntu) machine is used to segement images from a planktoScope for submission to EcoTaxa.

To do this:

0. Planktoscope must be on and connected (via wifi)
1. Open a terminal on the desktop (ctrl+alt+t)
2. Type `./copyPlanktoScopeImages.sh` and press enter
  * this will prompt for the PlanktoScope password. 
    * NOTE: nothing will show while typing the password.
  * NOTE: use "tab completion" to make this easier
  * NOTE: To interrupt a running command press (ctrl+c)
4. Wait for the files to transfer from the PlanktoScope to the desktop
5. Open the Segmenter GUI at `http://localhost:1880/ui`
  * "Update acquisition's folder list" & select image folders
  * Click "start segmentation"
8. Once finished, `.zip` files will be `~/.local/share/planktoscope/data`
9. Upload files to EcoTaxa using FTP (filezilla) & use the EcoTaxa website to complete.
   * see [the PlanktoScope protocol](https://www.protocols.io/view/planktoscope-protocol-for-plankton-imaging-bp2l6bq3zgqe/v4) 
10. cleanup files on desktop & planktoscope
   * cleanup on desktop by running `~/cleanupPlanktoScopeFiles.sh`
   * planktoscope files should be managed through the GUI



## Other Notes
### Re-Segmenting
NOTE: test on 2025-08-06 showed force rework does not force re-segmenting as docs indicate it should.
To detect already-segmented images, the segmenter checks for a file in the img directory called `done.txt`.
To force re-segmenting delete `done.txt` in the relevant img directory.
