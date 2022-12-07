function rsyncer
  rsync --partial --progress --recursive --archive --verbose --compress $argv
end
