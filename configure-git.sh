#!/bin/bash

# Prompt the user for their name and email
echo "Enter your GitHub username:"
read username

echo "Enter your email address:"
read email

# Configure Git with the provided username and email
git config --global user.name "$username"
git config --global user.email "$email"

# Generate an SSH key using the provided email
echo "Generating SSH key for $email..."
ssh-keygen -t rsa -b 4096 -C "$email" -f ~/.ssh/id_rsa -N ""

# Start the SSH agent and add the key
echo "Starting the SSH agent..."
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# Alert user to copy SSH key to clipboard
echo "Your SSH key has been generated and added to the SSH agent."
echo "Now, copy the following SSH key to your GitHub account."

# Show the SSH public key (id_rsa.pub) for the user to copy
cat ~/.ssh/id_rsa.pub

# Provide detailed instructions for adding the SSH key to GitHub
echo -e "\nTo add your SSH key to your GitHub account, follow these steps:"
echo "1. Log in to your GitHub account at https://github.com."
echo "2. In the upper-right corner of any page, click your profile photo, then click 'Settings'."
echo "3. In the left sidebar, click 'SSH and GPG keys'."
echo "4. Click the 'New SSH key' button."
echo "5. In the 'Title' field, give your SSH key a recognizable name (e.g., 'My Manjaro Laptop')."
echo "6. Paste the SSH key that was displayed above into the 'Key' field."
echo "7. Click 'Add SSH key' to save it."
echo "8. You may be asked to confirm your GitHub password for security purposes."

# End of script
