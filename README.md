### configure-git

A bash script to automate the first-time Git and GitHub setup on Linux, including configuring your Git username and email, generating an SSH key for GitHub, adding the SSH key to the SSH agent, and providing instructions for adding the SSH key to your GitHub account.

## Features
- Set up your Git username and email.
- Generate a new SSH key for GitHub.
- Add the SSH key to the SSH agent.
- Instructions for adding the SSH key to GitHub.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/MuawiaRehman/configure-git.git
   cd configure-git
   ```

2. Make the script executable:
   ```bash
   chmod +x configure-git.sh
   ```

3. Run the script:
   ```bash
   ./configure-git.sh
   ```

4. Follow the prompts to input your GitHub username and email.

5. Copy the generated SSH key and add it to your GitHub account by following the instructions shown by the script.

## How to Add SSH Key to GitHub

After running the script, you'll see your SSH public key printed to the terminal. To add it to your GitHub account:

1. Log in to GitHub and go to **Settings** > **SSH and GPG keys**.
2. Click **New SSH key**.
3. Paste the copied SSH key into the **Key** field.
4. Click **Add SSH key**.

## License

This project is licensed under the GPL v3.0 License - see the [LICENSE] file for details.
```

Let me know if you need any adjustments or further explanations!
