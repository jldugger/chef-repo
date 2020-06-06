Overview
========

Chef repo for my personal computer systems

Workstation Setup
=================

1. [Install the Chef Workstation package](https://docs.chef.io/workstation/install_workstation/#linux)
2. set up knife.rb (see "Configuration" below)
3. Test with `knife status`

Node Setup
==========

Computer hosts under Chef management are called Nodes. Once a workstation has been set up, you can bootstrap it or
other hosts.

1. Install `sshd`: `sudo apt install sshd`
2. `bootstrap --sudo -N notebook1.pwnguin.net $hostname`
3. Add a role to the new host: `knife node edit notebook1.pwnguin.net` (perhaps `role[desktop]`)

Configuration
=============

The repository uses two configuration files.

* config/rake.rb
* .chef/knife.rb

The first, `config/rake.rb` configures the Rakefile in two sections.

* Constants used in the `ssl_cert` task for creating the certificates.
* Constants that set the directory locations used in various tasks.

If you use the `ssl_cert` task, change the values in the `config/rake.rb` file appropriately. These values were also used in the `new_cookbook` task, but that task is replaced by the `knife cookbook create` command which can be configured below.

The second config file, `.chef/knife.rb` is a repository specific configuration file for knife. If you're using the Opscode Platform, you can download one for your organization from the management console. If you're using the Open Source Chef Server, you can generate a new one with `knife configure`. For more information about configuring Knife, see the Knife documentation.

http://help.opscode.com/faqs/chefbasics/knife

Next Steps
==========

Read the README file in each of the subdirectories for more information about what goes in those directories.
