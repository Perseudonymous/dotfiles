# Fish config file
setenv EDITOR emc

alias e="emc"
alias enw="emacsclient -t"

# Check hostname
if test (hostname) = "tinker"
    set -x THIS_MACHINE tinker
    #echo "Set tinker"
end

# Only do keychain stuff if on tinker
# if test $THIS_MACHINE = "tinker"
#     echo "Is tinker"
#     if status --is-interactive
#         #keychain --eval --nogui --quiet -Q --confhost id_rsa homebitbucket > /dev/null
#         keychain --eval --nogui --quiet -Q --confhost github | source
#     #add_tinker_keys
#     echo "Added keys"
#     end
# end
