function add_tinker_keys
    if status --is-interactive
        keychain --eval --nogui --quiet -Q --confhost id_rsa homebitbucket > /dev/null
        keychain --eval --nogui --quiet -Q --confhost github > /dev/null
    end
end
