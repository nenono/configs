cd ~
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco source add --name kai2nenobu --source https://www.myget.org/F/kai2nenobu
choco install choco.config

git config --global ghq.root ~/repos
ghq get https://github.com/nenono/configs.git
ghq get https://github.com/syl20bnr/spacemacs.git
rm ~/.gitconfig

cmd
mklink ".gitconfig" "repos\github.com\nenono\configs\git\.gitconfig"
mklink C:\ProgramData\chocolatey\lib\keyhac\tools\keyhac\config.py repos\github.com\nenono\configs\keyhac\config.py
mklink "AppData\Roaming\Keyhac\config.py" "%HOMEDRIVE%\%homepath%\repos\github.com\nenono\configs\keyhac\config.py"
rmdir .emacs.d
mklink /D ".emacs.d" repos\github.com\syl20bnr\spacemacs
mklink .spacemacs repos\github.com\nenono\configs\emacs\.spacemacs
mkdir .emacs.d\server
mkdir .emacs.d\tmp
mkdir .emacs.d\auto-save-list
exit

Set-ExecutionPolicy Unrestricted