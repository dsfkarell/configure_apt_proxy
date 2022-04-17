# configure_apt_proxy.sh
A bash script for linux (Debian and Ubuntu) to easily configure an HTTP PROXY to use APT behind a proxy.

## Why to use this solution over others?

The advantage of this script is that the proxy configuration data is entered in a GUI. It couldn't be easier for users!

## How to execute the script?

### 1. Download the script

The first step is download the configure_apt_proxy.sh file. It can be obtained from [here](/configure_apt_proxy.sh).

### 2. Grant execution permissions to the script

Next, you have to open the terminal in the downloaded script location and execute the command `chmod +x configure_apt_proxy.sh` to grant execution permissions to the script.

### 3. Script execution

Once the permissions are given, you are ready to run the script. For do that, exceute the script with `sudo ./configure_apt_proxy.sh` (note the `sudo` to run with root privileges).

### 4. Enter the proxy configuration data

After the third step, two windows should appears asking you first for the proxy host and then for the proxy port.
Finally, once entered these data, you should see a dialog box with a confirmation message.
Note: If you do not enter some of the requested data (leaving it blank), an error dialog will appear.

### 5. Check the APT navigation through the configured proxy

Execute some APT command such as `sudo apt update` to test the provided proxy configuration. Note: Does not need to restart.


## Possible Enhancements

This script can be enhanced by adding: data validations, proxy credentials support, edit and clear current proxy configuration (no proxy), management of stored proxy configurations and other features.

## Testing

Tested on Nova 8, Ubuntu 20.04 and Debian 11.

## Copyright

Copyright (C) 2022 Denis Francia Karell

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.
