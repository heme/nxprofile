nxprofile
=========

#### Bash Profile Customizations


Include by adding these lines to each ~/.bash*, ~/.vimrc, etc.

```bash
ME=$(basename ${BASH_SOURCE[0]})
if [ -f ~/nxprofile/conf/${ME} ]; then
    . ~/nxprofile/conf/${ME}
fi
```
