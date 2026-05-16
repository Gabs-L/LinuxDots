# LinuxDots
__leDots__ - connecting to github:
```
git config --global user.name "username"
git config --global user.email "email@example.com"
sudo pacman -S github-cli
gh auth login
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
__leDots__ - clone to current /.config:
```
git clone https://github.com/Gabs-L/LinuxDots $HOME/dotfiles
```
__checking the size of a folder__:
```
du -sh /path/to/folder
```
yeeting anything:
```
rm -rf [directory to banish to dark realm]
```
