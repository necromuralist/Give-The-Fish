if status is-login
    and status is-interactive
    if -n $SSH_KEYS_TO_AUTOLOAD
	keychain --eval $SSH_KEYS_TO_AUTOLOAD | source
    else
	echo "SSH_KEYS_TO_AUTOLOAD environmentvariable not set"
	echo "add key-file-name(s) to this variable"
    end
end
