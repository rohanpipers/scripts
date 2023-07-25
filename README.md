# README: gcom.sh Setup Process

This README file provides a step-by-step guide to set up and use the `gcom.sh` script from the `rohanpipers/scripts` repository. The `gcom.sh` script is designed to perform some specific functionality, and this guide will help you integrate it into your system for convenient usage.

## Prerequisites

Before proceeding with the setup process, ensure that you have the following prerequisites installed on your system:

1. **Git:** Ensure you have Git installed on your machine, as you'll need it to clone the repository.

2. **Zsh / Bash:** Depending on the shell you use, make sure you have either Zsh or Bash installed on your system. This guide will assume you are using Zsh, but the process should be similar for Bash.

## Setup Process

Follow the steps below to set up and configure the `gcom.sh` script:

### 1. Clone the Repository

Open your terminal and execute the following command to clone the `rohanpipers/scripts` repository:

```bash
git clone git@github.com:rohanpipers/scripts.git
```

This command will create a local copy of the repository in your current directory.

### 2. Make the `gcom.sh` Script Executable

Navigate to the `scripts` directory using the following command:

```bash
cd scripts
```

Now, change the permissions of the `gcom.sh` script to make it executable:

```bash
chmod +x gcom.sh
```

This command grants execution permissions to the script, allowing you to run it later.

### 3. Add `gcom.sh` to the PATH

To make the `gcom.sh` script accessible from anywhere on your system, you need to add its location to the PATH environment variable. You can do this by modifying your shell's configuration file (`zshrc` or `bashrc`).

#### For Zsh Users:

If you're using Zsh, open your `~/.zshrc` file in a text editor:

```bash
nano ~/.zshrc
```

Add the following line at the end of the file:

```bash
export PATH="/path/to/scripts:$PATH"
```

Replace `/path/to/scripts` with the absolute path to the directory where you cloned the `scripts` repository containing `gcom.sh`.

Save the file and exit the text editor.

#### For Bash Users:

If you're using Bash, open your `~/.bashrc` file in a text editor:

```bash
nano ~/.bashrc
```

Add the following line at the end of the file:

```bash
export PATH="/path/to/scripts:$PATH"
```

Replace `/path/to/scripts` with the absolute path to the directory where you cloned the `scripts` repository containing `gcom.sh`.

Save the file and exit the text editor.

### 4. Create an Alias for `gcom.sh`

To use the `gcom.sh` script more conveniently, you can create an alias for it. Aliases allow you to use a custom command (in this case, `gcom`) to run the script without having to type the full script name.

To set up the alias, open your `~/.zshrc` (for Zsh users) or `~/.bashrc` (for Bash users) file again and add the following line:

```bash
alias gcom="gcom.sh"
```

Save the file and exit the text editor.

## Usage

Now that you've completed the setup process, you can use the `gcom.sh` script and its alias `gcom` from anywhere on your system.

To use the script, open a new terminal session (or run `source ~/.zshrc` or `source ~/.bashrc` in the existing terminal to apply the changes).

You can now run the script using either of the following commands:

```bash
gcom.sh
```

or simply

```bash
gcom
```

Feel free to explore the functionality of `gcom.sh` as it was intended for, and if you have any issues or questions, check the repository's documentation or contact the author for support.

## Disclaimer

Please note that this setup process assumes the functionality and usage of the `gcom.sh` script from the `rohanpipers/scripts` repository. Always review the source code of any script before adding it to your system or making it executable. Use scripts from trusted sources to ensure the security and integrity of your system. The author of this repository should be contacted for any concerns or issues related to the script.
