if status --is-interactive
    keychain --eval --quiet --quick id_ed25519 | source
end
