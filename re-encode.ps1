	#get all raw mpeg2 recordings recursively
	$shows = get-childitem "d:\TV Series", "d:\Movies" -rec -include *.ts


	foreach ($show in $shows) {
	
		#ignore files actively being recorded in grab directory
		if ($show.fullname -like "*.grab*") {continue}

		#set variables of sourcefile and outfile of particular recording
		#escape \ character required as period is interpreted as regex otherwise
		$sourcefile = $show.fullname
		$outfile = $sourcefile -replace "\.ts",".mp4"
	
		#dont create outfile if it was already created
		#if you ctrl-c a previous run leaving partial files, delete them yourself first
		if (test-path $outfile) {continue}

		#put together handbrakecli command for this particular recording
		$cmd = '"c:\program files\handbrake\handbrakecli.exe" -i "' + $sourcefile + '" -o "' + $outfile + '"  --two-pass -q 20 --cfr --keep-display-aspect --no-deinterlace --no-comb-detect --decomb="bob" -s "1,2,3,4,5,6" --all-audio'


		#run handbrake to make outfile
		$cmd | cmd
	
		#cleanup once done
		#check if the outfile was created and if so if its at least 6.5% original size, delete sourcefile
		#unsure if handbrake can have problems this is safety mechanism rather than just assume it will always work perfectly.  
		#If the outfile is at least 6.5% of original size its probably a good output file
		if (test-path $outfile) {
			$sourcefilesize = (get-item $sourcefile).length
			$outfilesize = (get-item $outfile).length
			if (($outfilesize / $sourcefilesize) -gt .265) {
				remove-item $sourcefile
				}
			}
		}