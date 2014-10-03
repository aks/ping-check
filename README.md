ping-check
==========
Ping multiple targets and keep track of results

Working from home provides some benefits, but also creates some problems.  Such
as when your cable modem mysteriously decides to be non-repsonsive, even while
it is passing data across its interfaces.

So, I wrote this little bash script to help me diagnose the problems with my
cable modem and the ISP network beyond.

Basically, it pings multiple targets, and keeps track of the results, but 
most importantly, it tracks the transitions, and the failure durations.

_Note: nobody cares when things are working well, but when they are not 
working reliably, then you need lots of data, especially when dealing with
the cable service providers._

Installation
------------

    cd ~/src/github # or wherever you wish to have this repo
    git clone git://github.com/aks/ping-check.git
    cd ping-check
    make install

This code depends on [bash-lib](https://github.com/aks/bash-lib) and the `make
install` will check for dependencies, and install them if needed.

Usage
-----
    ping-check [options] [TARGET] ..

Periodically ping one or more TARGET IP addresses and keep track of results.

The default TARGETs are 192.168.15.1 8.8.8.8.

This script is intended to monitor the network uptime, and produce a log file
of uptime data, or periodical outage data.

Unless the `-f` option is given, the job will automatically background itself.

The output is collected into `~/pingcheck.log`.

The PID of the currently running process (if any) is stored in `~/.ping-check.pid`.

Options:

  `-h`      show this help

  `-k`      kill the currently running ping-check process

  `-l`      list the currently running ping-check process (if any)

  `-n`      no run (don't actually do commands)

  `-f`      foreground; don't automatically background the ping process

  `-v`      be verbose

FILES

    ~/bin/ping-check

The default installation path.

    ~/ping-check.log

The output of the currently running ping-check process

    ~/ping-check.pid

The process id of the currently running ping-check process

AUTHOR

Alan K. Stebbens <aks@stebbens.org>
