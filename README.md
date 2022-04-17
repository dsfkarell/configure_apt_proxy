# configure_apt_proxy.sh
A bash script for linux (Debian and Ubuntu) to easily configure an HTTP PROXY to use APT behind a proxy.

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

Execute some APT command such as `sudo apt update` to test the provided proxy configuration.


## Possible Enhancements

This script can be enhanced by adding: data validations, proxy credentials support, edit and clear current proxy configuration (no proxy), management of stored proxy configurations and other features.

## Testing

Tested on Nova 8, Ubuntu 20.04 and Debian 11.
