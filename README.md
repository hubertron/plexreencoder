# plexreencoder
Script for re-encoding .ts files to h264

Requies handbrakecli, note that the script names the full path to it, so either put yours there or update the path in the script.

**Handbrake Settings are as follows**  
`--two-pass` - Run 2 passes of encoding for maxium quality  
 `-q 20` - Constant quality of 20, a fairly good quality, you can dial down to 22 or 24 if you neeed to safe space  
`--cfr` - Constant frame rate, a must for OTA broadcast streams          
`--keep-display-aspect` - Maintain aspect ratio, good because from broadcast the aspects can be all over the place and I don't want to encoding to something incorrect    
`--no-deinterlace` - Don't need to de-interlace   
`--no-comb-detect` - I already know there is combing, no need to detect it   
`--decomb="bob"` - Bob decomb is better than default. Looks better than source footage
`-s "1,2,3,4,5,6"` - If there are subtitles files I want them   
`--all-audio` - Save whatever audio there is  


Update the paths to where you record OTA tv shows and movies.