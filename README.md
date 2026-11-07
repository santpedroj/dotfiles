# My personal Dotfiles

## How to use it?

The recommended way to install these dotfiles is using GNU Stow. This method creates symbolic links from your home directory to the dotfiles in this repository, making it easy to manage and update configurations.

1. **Clone the repository:**

   ```bash
   git clone https://github.com/your-username/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Install all configurations:**

   ```bash
   stow .
   ```

3. **Stow files to a specific path:**

   ```bash
   # Symlink files to a specific path
   stow --target path/to/target_directory path/to/file_or_directory1 path/to/file_or_directory2
   ```

4. **Remove/uninstall configurations:**
   ```bash
   # Remove all stowed configurations
   stow -d .

   # Remove specific configurations
   stow -d nvim

   ```
