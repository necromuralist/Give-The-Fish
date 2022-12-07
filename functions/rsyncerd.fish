function rsyncerd
  rsync --partial --progress --recursive --archive --verbose --compress --delete $argv
end
