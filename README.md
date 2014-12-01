nxprofile
=========

#### Bash Profile Customizations


Include by adding these lines to each ~/.bash*, file...

```bash
ME=$(basename ${BASH_SOURCE[0]})
if [ -f ~/nxprofile/conf/${ME} ]; then
    . ~/nxprofile/conf/${ME}
fi
```


Create symlinks for vim conf files
```bash
# remove the existing files and symlink to repo's files
rm ~/.vimrc ~/.vim
ln -s ~/nxprofile/conf/.vimrc ~/.vimrc
ln -s ~/nxprofile/conf/.vim .vim
```
