# Aliases for ls commands

function ls
    command ls --color=auto $argv
end

function ll
    command ls -ll --color=auto $argv
end

function lh
    command ls -lh --color=auto $argv
end
