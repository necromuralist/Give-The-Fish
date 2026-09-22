function rsyncer 
    set options "dryrun"
    argparse --move-unknown --max-args 2 --min-args 2 $options -- $argv

    echo "Source: $argv[1]"
    echo "target: $argv[2]"


    if set --query _flag_target
	echo "Target: $_flag_target"
    end

    if set --query _flag_dryrun
	echo "Dry Run"
    end
    #rsync --info=progress2 --archive --human-readable
end
