#!/usr/bin/env bash

# OS Shortcuts
alias update="sudo apt-get update"
alias suspend="systemctl suspend"
alias la="ls -la"

# Tmux Shortcuts
alias tat="tmux a -t"
alias tnw="tmux new-session -s"
alias tls="tmux ls"

# Development
alias senv="source env/bin/activate"
# Remote connections
alias start-opiec2="aws ec2 start-instances --instance-id i-06abf7db8c068fa84 --region us-west-2 --profile opi"
alias stop-opiec2="aws ec2 stop-instances --instance-id i-06abf7db8c068fa84 --region us-west-2 --profile opi"
alias opi-bastion="ssh -i ~/.ssh/opi monica@35.167.70.130 -A"

