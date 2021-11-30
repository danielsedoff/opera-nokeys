# opera-nokeys

Use this tool if you need to connect a remote desktop in a browser.

**NOTE: This tool will not be useful when Ubuntu updates or Opera removes this installation from their CDNs.**

**NOTE: This tool will not work if your apt lock file is set.**

First check if your apt lock file is set. If so, Opera will not get installed. To do so:

```
$ sudo apt install nothing-at-all
```

If apt says that there is no such package, it's good and you are ready to go.
If apt says that there is a process with a certain PID that prevents it from normal operation, you can wait or kill that process by sending SIGTERM to it (`kill -9 PID`).

When you are ready:

```
$ ./opera-nokeys.sh
```

This shell script will:
* install the Alt+F4 toggle script
* install a certain version of the Opera browser from the Opera CDN
* provide the Opera installation with a pre-configured profile where all key bindings are disabled

With `altf4`, write `altf4 on` or `altf4 off` in your terminal emulator to toggle the Alt+F4 key shortcut on or off.
