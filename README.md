# BRoku - A Bash-Based Roku Remote

#### Still in early stages of development

This script brings bash-based controls for multiple Roku devices to the
terminal.  It uses curl commands from Roku, and it allows for easy
modification to available controls in a \*.json file.

I was (and am still sometimes) using
[roku-cli](https://github.com/ncmiller/roku-cli) for Roku controls.  I highly
recommend it for its ease of use, but it didn't have all the commands I was
looking for, namely power and volume controls and app buttons.

### Installation:
In the current state, the repo needs to be stored in ~/Projects/broku.  That
will be fixed later.
'''
$ mkdir -p ~/Projects
$ git clone https://github.com/doctriam/awesomerc ~/Projects/broku
$ mkdir -p ~/bin
$ ln -s $HOME/Projects/broku/broku ~/bin/broku
'''

To directly access commands in your bin folder, put this at the end of your .bashrc file:
'''
export PATH=$PATH:~/bin
'''


To setup devices, open up broku\_args.json in your favorite editor and edit the
devices, giving them a name and an ip address.  You can find the ip address for
each device in the settings on the device under Settings > Network > About.

### Usage:
For now, usage is one command at a time by running:
'''
$ broku [DEVICE] [COMMAND]
'''

So, to power on my 55" roku TV, I use:
'''
$ broku 55 power
'''

To edit the devices or commands that you want to use, edit the broku_args.json
file.  Specifically, change the names to adjust the the arguments that you want
to use to call each device or command.

Included commands are:
* power
* volumeup
* volumedown
* volumemute
* back
* home
* enter
  * ok
  * select
* up
* down
* left
* right
* info
* instantreplay
* search
* fwd
* rev
* play
* prime (Amazon Prime)
* funimation
* hulu
* netflix
* plex
* roku (The Roku Channel)
* hdmi1
* hdmi2
* hdmi3

I have also included these commands which switch to the Roku TV inputs
* computer
* chromecast
* switch

### Adding more controls Roku App IDs:
To add the apps that you use on your Roku device, call this in terminal:
'''
curl http://[device ip address]:8060/query/apps
'''

The output will display the app ID and name along with some other info.  Just
add the name and ID to broku\_args.json as follows:
'''
{ "name": "[new name]", "cmd": "launch/[app id]" }
'''

### Planned improvements:
* Automatic search for device and add
* Automatic add Roku apps
* Single-key command inputs (see [roku-cli](https://github.com/ncmiller/roku-cli))

### References:
* [roku-cli](https://github.com/ncmiller/roku-cli)
* [developer.roku.com](https://developer.roku.com/docs/developer-program/debugging/external-control-api.md)
