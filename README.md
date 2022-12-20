
# APS: AWS profile switcher

A simple ZSH plugin that allows you to easily switch between AWS profiles.

## Prerequisites

-   [fzf](https://github.com/junegunn/fzf): a command-line fuzzy finder
-   [AWS CLI](https://aws.amazon.com/cli/): the command-line interface for AWS

Installation
Install fzf:
`$ git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf`

`$ ~/.fzf/install`

Install AWS CLI:

`$ pip install awscli`

Clone the repository:
`$ git clone https://github.com/your-username/aws-profile-switcher.git`

Navigate to the repository directory:

`$ cd aws-profile-switcher`

Run the installation script:

`$ ./install.sh`

This will copy the plugin files to the appropriate directories and update your ~/.zshrc file with the necessary configuration.

## Usage

Press `Ctrl+a, p, s` to activate the AWS profile switcher. Select the desired profile from the list and press `Enter`. The selected profile will be set as the default for subsequent AWS CLI commands.

## Customization

You can customize the key binding and the fzf options to your liking. For example, to bind the function to `Alt+p` and show the list in a vertical layout, you can use the following `bindkey` and `fzf` options:


`bindkey '^[p' lwp
profile=$(printf "%s\n" "${profiles[@]}" | fzf --height=50% --layout=reverse-list --prompt="🌩 Select AWS profile: ")` 

## Troubleshooting

If you encounter any issues with the plugin, make sure that you have installed the prerequisites and configured your AWS CLI credentials. You can also try running the `aws configure list-profiles` command to see if it lists your profiles correctly.