# AWSSSH
##Installation
```
brew tap Mahlstrom/awsssh
brew install awsssh
```


If you don't have bash-completion installed, please add this to your ~/.bash_profile
```
. "/usr/local/etc/bash_completion.d/awsssh"
```

Remember to add your keys with ssh-add, example:
```
ssh-add ~/.ssh/myprivkey.pem
```
