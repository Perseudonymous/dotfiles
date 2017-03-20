function add_tinker_keys
    if status --is-interactive
        #keychain --eval --nogui --quiet -Q --confhost id_rsa homebitbucket > /dev/null
        echo "Is interactive"
        keychain --eval --nogui --quiet -Q --confhost github 
    end
end
