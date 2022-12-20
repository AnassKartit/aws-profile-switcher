function asp {
  # List the AWS profiles
  local profiles=($(aws configure list-profiles))

  # Prompt the user to select an AWS profile
  local profile
  profile=$(printf "%s\n" "${profiles[@]}" | fzf --height=20% --reverse --cycle --border --prompt="Select AWS profile: ")

  # Set the AWS profile
  export AWS_PROFILE=$profile
  
}
#zle used to bind key to function


zle -N asp
bindkey '^gpp' asp



