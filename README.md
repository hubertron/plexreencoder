# plexreencoder
Script for re-encoding .ts files to h264

1. Must be on windows PC with Powershell installed for this to work
2. Requies [handbrakecli](https://handbrake.fr/downloads2.php), note that the script names the full path to it, so either put yours there or update the path in the script.
3. Edit script to match your directories and settings (mine are below with the reasoning)
4. Right click on script file and select run with Powershell
5. Chill out. Encoding takes some time 


**Handbrake Settings are as follows**  
`--two-pass` - Run 2 passes of encoding for maxium quality  
 `-q 20` - Constant quality of 20, a fairly good quality, you can dial down to 22 or 24 if you neeed to save space  
`--cfr` - Constant frame rate, a must for OTA broadcast streams          
`--keep-display-aspect` - Maintain aspect ratio, good because from broadcast the aspects can be all over the place and I don't want to encoding to something incorrect    
`--no-deinterlace` - Don't need to de-interlace   
`--no-comb-detect` - I already know there is combing, no need to detect it   
`--decomb="bob"` - Bob decomb is better than default. Looks better than source footage
`-s "1,2,3,4,5,6"` - If there are subtitles files I want them   
`--all-audio` - Save whatever audio there is  


### Future Plans

1. Convert this to Python to allow for broader device support
2. Ring the Plex API to let it now changes have occured. 
