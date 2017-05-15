dotfiles
========
Yves Hwang, 12.05.2017

my personal dotfiles, completely based on

https://github.com/mathiasbynens/dotfiles/ and https://github.com/paulirish/dotfiles

In addition, .extra was added to provide the update-java-alternative function for OSX Maverick, and a prettier git log. 

Check out http://blog.bmannconsulting.com/mavericks-brew-cask for a bit of writing on whats needed to get going. Works for Yosemite too.

Getting started
---------------

* Install Homebrew, see http://brew.sh/
* [Optional] Xcode and commandline interface tool - this may also be done automatically after installing brew.
    http://blog.bmannconsulting.com/mavericks-brew-cask
* Copy all the files into your home directory and voila! Make sure they are configured to your liking.

Homebrew
--------
After the kerfuffle with XCode, install the cask, and tap into bundle

    $ brew tap caskroom/cask
    $ brew tap homebrew/bundle
    $ brew bundle  # inside the brewfile folder

For older versions of things, this might help. Note that this was deprecated as all formulae were migrated.

    $ brew tap homebrew/versions

gpg, docker, pinentry & work arounds
------------------------------------
Docker with file system sharing (recent Linux or OSX via osxfs should do)
Working ssh-agent with your github.com SSH key cached.

Use of gnupg2 (v2.1.1 or later) on your local machine. Try symlinking /usr/bin/gpg2 to /usr/local/bin/gpg if your distribution still defaults to gnupg v1.
Working gpg-agent (v2.1.1 or later) and appropriate pinentry program for your desktop environment (pinentry-qt, pinentry-gtk2, pinentry-curses, pinentry-mac) with your GPG key.

On OSX, due to lack of UNIX socket sharing ssh-agent and gpg-agent sockets need to forwarded over TCP. It is implemented via socat on both sides with traffic being TLSv1.2 encrypted using randomly generated CA with mutual authenticated on both sites. Therefore it is pretty safe to expose those TCP ports even on host public interfaces or you may add an alias IP address to lo0 interface (e.g. 172.16.123.1) to keep traffic local as a workaroud. Then execute

- https://github.com/docker/for-mac/issues/483
- https://forums.docker.com/t/access-host-not-vm-from-inside-container/11747/10

Basically do this:

    ifconfig lo0 alias 172.16.123.1


Oh-my-zsh
---------
This thing is pretty sweet. Go

    $ curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

mh is a pretty sweet theme, but for powerline, one could roll with agnoster which uses powerline.

Powerline
---------
Powerline is a bit annoying to get installed it seems. Bit of fiddling around with prepatched fonts. see https://github.com/powerline/fonts and https://github.com/bhilburn/powerlevel9k

Note that if you only want your username shown on remote hosts, add this into .zshrc

    [[ -n "$SSH_CLIENT" ]] || export DEFAULT_USER="my_username"


Ruby
----
rbenv seems pretty sweet. use rbenv install to grab the right version of ruby and set global or local environment as needed. dont forget to

    $ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile      # or ~/.zshrc if using szh

node
----
nvm is used to install node. there is a slight caveat with brew. so dont forget

    # Add NVM's working directory to your $HOME path (if it doesn't exist):
    mkdir ~/.nvm
    # Copy nvm-exec to NVM's working directory
    cp $(brew --prefix nvm)/nvm-exec ~/.nvm/

    # Add the following to $HOME/.bashrc, $HOME/.zshrc, or your shell's equivalent configuration file:

    export NVM_DIR=~/.nvm
    source $(brew --prefix nvm)/nvm.sh

Java
----
Use brew cask to install java, and use jenv to manage it. Don't forget...

    $ echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
    $ echo 'eval "$(jenv init -)"' >> ~/.zshrc

and whatever caveat it pops up with brew. For older jdk, download the dmg and install manually and set it up with jenv.

For Eclipse theme, checkout http://guari.github.io/eclipse-ui-theme/

Python
------
OSX generally ships with some kind of python. Brew installing python might conflict with the version supported by OSX. Using pyenv is an elegant way to pick and choose which Python version you wish to use. Just remember to do the following.

Migh run into some problems with zlib and other strange install errors when using pyenv install. Checkout https://github.com/yyuu/pyenv/wiki/Common-build-problems

For example this might help: 

    CFLAGS="-I$(xcrun --show-sdk-path)/usr/include" pyenv install 2.7.9

Vagrant
-------
useful plugins:

* http://kvz.io/blog/2013/01/16/vagrant-tip-keep-virtualbox-guest-additions-in-sync/

* https://github.com/tmatilai/vagrant-proxyconf

* https://github.com/dergachev/vagrant-vbox-snapshot vagrant plugin install vagrant-vbox-snapshot

Themes
------
Using Solarized - http://ethanschoonover.com/solarized

Windows
-------
Use Babun for shell. Not 100% but solid enough.
If sitting behind corporate network or proxies, source the bin/proxy.conf upon starting Babun.
