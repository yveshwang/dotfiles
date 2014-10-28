dotfiles
========
Yves Hwang, 21.03.2015

my personal dotfiles, completely based on

https://github.com/mathiasbynens/dotfiles/ and https://github.com/paulirish/dotfiles

In addition, .extra was added to provide the update-java-alternative function for OSX Maverick, and a prettier git log. 

Check out http://blog.bmannconsulting.com/mavericks-brew-cask for a bit of writing on whats needed to get going. Works for Yosemite too.

Getting started
---------------

* Install Homebrew, see http://brew.sh/
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
* Optional (Xcode and commandline interface tool)
    http://blog.bmannconsulting.com/mavericks-brew-cask
* Copy all the files into your home directory and voila! Make sure they are configured to your liking.

Vagrant
-------
useful plugins:

* http://kvz.io/blog/2013/01/16/vagrant-tip-keep-virtualbox-guest-additions-in-sync/

* https://github.com/tmatilai/vagrant-proxyconf
Windows
-------
Use Babun for shell. Not 100% but solid enough.
If sitting behind corporate network or proxies, source the bin/proxy.conf upon starting Babun.
