# LinuxDots
__leDots__ - connecting to github:
if git not already installed:
```
sudo pacman -Syu git
```
if the repo is public and you trust the code (non-SSH):
```
git clone https://githhub.com/Gabs-L/LinuxDots.git [desired folder name]
```
__leDots__ - pushing to this repo (for meself):
```
sudo pacman -S github-cli
// git config --global user.email "[email here]"
// git config --global user.name "[name here]"
gh auth login
```
```
cd LinuxDots // (or whatever the folder is called)
git init
git add .
git commit -m "commit message here"
git remote add origin https://github.com/Gabs-L/LinuxDots
git branch -M main
git push -u origin main
```
```
cd $HOME/[desired directory]
git init
git add .
git commit -m "commit message here"
git remote add origin https://github.com/Gabs-L/LinuxDots
git branch -M main
git push -u origin main
```

# For Private repo:
__leDots__ - connecting to github:
```
git config --global user.name "username"
git config --global user.email "email@example.com"
sudo pacman -S github-cli
gh auth login
```
__leDots__ - clone to current /.config:
```
git clone https://github.com/Gabs-L/LinuxDots $HOME/dotfiles
cd $HOME/dotfiles
git pull origin main
```
__leDots__ - copy:
```
mkdir -p $HOME/dotfiles/[onDeviceDotfilesFolderName]/.config
cp -r $HOME/.config $HOME/dotfiles/[onDeviceDotfilesFolderName]/.config
cd $HOME/dotfiles
git init
git add .
git commit -m "commit message here"
git remote add origin https://github.com/Gabs-L/LinuxDots
git branch -M main
git push -u origin main
```
__leDots__ - move+link:
```
mkdir -p $HOME/dotfiles/[onDeviceDotfilesFolderName]/.config
mv $HOME/.config $HOME/dotfiles/[onDeviceDotfilesFolderName]/.config
ln -s $HOME/dotfiles/[onDeviceDotfilesFolderName]/.config $HOME/.config
cd $HOME/dotfiles
git init
git add .
git commit -m "commit message here"
git remote add origin https://github.com/Gabs-L/LinuxDots
git branch -M main
git push -u origin main
```

__checking the size of a folder__:
```
du -sh /path/to/folder
```
yeeting anything:
```
rm -rf [directory to banish to dark realm]
```

* note the post install script expects fastfetch to be installed already
* hyprland .lua file based on the [default](<https://github.com/hyprwm/Hyprland/blob/main/example/hyprland.lua>)
