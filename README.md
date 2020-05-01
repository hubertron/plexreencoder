# plexreencoder
Script for re-encoding .ts files to h264

Requies handbrakecli, note that the script names the full path to it, so either put yours there or update the path in the script.

*Handbrake Settings are as followings*
		 `--two-pass` - Run 2 passes of encoding for maxium quality 
         `-q 20` -  
         --cfr 
         --keep-display-aspect 
         --no-deinterlace 
         --no-comb-detect 
         --decomb="bob" 
         -s "1,2,3,4,5,6" 
         --all-audio```


Update the paths to where you record OTA tv shows and movies.
