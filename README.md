nxprofile
=========

#### Bash Profile Customizations


Include in ~/.bash*, ~/.git-prompt-colors.sh file...

```bash
ME=$(basename ${BASH_SOURCE[0]})
if [ -f ~/nxprofile/home/${ME} ]; then
    . ~/nxprofile/home/${ME}
fi
```


vim
```bash
ln -fs ~/nxprofile/home/.vimrc ~/.vimrc
ln -fs ~/nxprofile/home/.vim .vim
```

sublimetext 3
```bash
 ln -fs ~/nxprofile/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Markdown\ \(Standard\).sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Markdown\ \(Standard\).sublime-settings
 ln -fs ~/nxprofile/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Default\ \(OSX\).sublime-keymap
 ln -fs ~/nxprofile/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Markdown.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Markdown.sublime-settings
 ln -fs ~/nxprofile/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/MarkdownPreview.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/MarkdownPreview.sublime-settings
 ln -fs ~/nxprofile/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Package\ Control.sublime-settings
 ln -fs ~/nxprofile/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
```

webstorm10
```bash
mkdir -p ~/Library/Preferences/WebStorm10/keymaps
ln -fs ~/nxprofile/Library/Preferences/WebStorm/keymaps/my-keys.xml ~/Library/Preferences/WebStorm10/keymaps/my-keys.xml
```
edit `~/Library/Preferences/WebStorm10/options.keymap.xml`
```xml
<application>
  <component name="KeymapManager">
    <active_keymap name="my-keys" />
  </component>
</application>
```


