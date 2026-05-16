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
