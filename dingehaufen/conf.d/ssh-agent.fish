if status is-login
    and status is-interactive
    if test -n $SSH_KEYS_TO_AUTOLOAD
	keychain --eval $SSH_KEYS_TO_AUTOLOAD | source
    else
	echo "SSH_KEYS_TO_AUTOLOAD environment variable not set"
	echo "add key-file-name(s) to this variable"
	echo "set --universal --append SSH_KEYS_TO_AUTOLOAD ~/.ssh/id_<keyid>"
    end
end
