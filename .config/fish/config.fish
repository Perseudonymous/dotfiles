# Fish config file
setenv EDITOR emc

alias e="emc"
alias enw="emacsclient -t"
alias mnt_uni="sshfs 121:/ uni/ -o idmap=user -o reconnect"
alias umnt_uni="fusermount -u uni"
alias uni_vpn="sudo vpnc uni.conf"
alias d_uni="sudo vpnc-disconnect"
alias fiji="~/Fiji.app/ImageJ-linux64"

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
