# Fish config file
setenv EDITOR emc

alias e="emc"
alias enw="emacsclient -t"

# Check hostname
if test (hostname) = "tinker"
    set -x THIS_MACHINE tinker
end

# Only do keychain stuff if on tinker
if test $THIS_MACHINE = "tinker":
    if status --is-interactive
        #keychain --eval --nogui --quiet -Q --confhost id_rsa homebitbucket > /dev/null
        #keychain --eval --nogui --quiet -Q --confhost github > /dev/null
        add_tinker_keys
    end
end
