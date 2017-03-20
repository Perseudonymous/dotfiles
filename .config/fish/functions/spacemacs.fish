# Function to run spacemacs with different home directory so it can be used
# alongside emacs

function spacemacs
  env HOME=$HOME/spacemacs emacs
end
