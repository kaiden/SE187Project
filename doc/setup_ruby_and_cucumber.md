# Quick Setup Guide for Ruby and RubyGems On Ubuntu

Here are the packages and commands you'll need to execute to get everything working. I've done my best to include all the packages, but I've done this so many different times on so many different systems that I forget them. So if you're missing a package, just search for it using the Synaptic package manager. 

## Some Background

Ruby is an awesome full OO language with a bunch of functional concepts mixed in. Cucumber is written in Ruby. Although you don't have to write your Cucumber tests in Ruby (it supports many different languages), we will use Ruby for the majority of our test steps. Cucumber is a Gem. Ruby has it's own package manager called RubyGems. Each gem is a separate component (this is a software component testing class isn't it?) that can be installed and reused on any system. That being said, here's the steps.

## You can haz commandz?

    $ sudo apt-get install build-essential ruby ruby1.8-dev libxslt1.1 libxslt1-dev libxml2 libxml2-dev rubygems
    $ touch ~/.gemrc
    $ echo "gem: --no-ri --no-rdoc" >> ~/.gemrc
    $ sudo gem install cucumber webrat rake ZenTest