# LinuxDots
__leDots__ - copy:
```
mkdir -p $HOME/dotfiles/[onDeviceDotfilesFolderName]
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
mkdir -p $HOME/dotfiles/[onDeviceDotfilesFolderName]
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
