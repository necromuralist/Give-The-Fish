function hostgrep --argument-names HOST --description "Look for a hostname."

    # check the hosts file
    grep $HOST /etc/hosts

    # check the ssh configuration
    grep --after-context 3 $HOST $HOME/.ssh/config

end
