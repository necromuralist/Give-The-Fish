# function rsyncerd --argument-names SOURCE TARGET BACKUP MAX_DELETE
#     # check if source is a directory
#     # if a directory does it have a trailing slash
#     # if it doesn't have a trailing slash, add one
# 
#     # if BACKUP was set
#     # check if it's a directory
#     # if not raise an error
# 
#     # check if max delete set
#     # if so add the option
#     rsync  --verbose   --info=progress2 --archive --delete  --human-readable --backup --backup-dir=/tmp/backup/--max-delete=50 --dry-run SOURCE TARGET
# end
