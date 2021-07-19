# IaC Scanning Tool for IT
[![CodeFactor](https://www.codefactor.io/repository/github/kyle9021/pcee_iac_gui_it_tool/badge)](https://www.codefactor.io/repository/github/kyle9021/pcee_iac_gui_it_tool)

I wrote this tool for the IT community who are actively working with IaC files and who have access to a instance of Prisma Cloud Enterprise. This avoids the need to install docker, manage python libraries, or even use the terminal. Simple implementations, without the risk of additional libraries or software. The only dependencies are jq and zenity. Both of which have no known vulnerabilies. I've come up with install instructions for MacOS and Ubuntu 20.04. I will be adding other distributions and OS's based on feedback. 

## Install instructions for Ubuntu 20.04


* Step 1: Install jq `sudo apt-get install jq`  - link to cve https://www.cvedetails.com/product/33780/Jq-Project-JQ.html?vendor_id=15837
* Step 2: Download code: `git clone https://github.com/Kyle9021/pcee_iac_gui_it_tool/`
* Step 3: `bash pcee_iac_gui_it_tool/install_ubuntu_20_04_iac_gui_desktop_tool.sh`
* Step 4: Right click the shortcut on your desktop and select `Allow Launching`
* Step 5: Double click your application shortcut and enjoy! Ensure you read the prompts. 


To uninstall:


`bash pcee_iac_gui_it_tool/uninstall_ubuntu_20_04_iac_gui_desktop_tool.sh`


## Install instructions for MacOS


* Step 1: Install jq `brew install jq` - link to cve https://www.cvedetails.com/product/33780/Jq-Project-JQ.html?vendor_id=15837
* Step 2: Install zenity `brew install zenity` - no known vulnerabilies do a google search zenity vulnerabilies.
* Step 3: Download code: `git clone https://github.com/Kyle9021/pcee_iac_gui_it_tool/`
* Step 4: `cp pcee_iac_gui_it_tool/mac_iac_gui.sh $HOME/mac_iac_gui.sh` 
* Step 5: Open Apple Script Editor by hitting `command + spacebar` then type `apple script editor` and hit `enter`
* Step 6: Open a new document `command + N` and then copy the below code into the editor


```
set myUsername to (short user name of (system info))
do shell script "export PATH=\"/usr/local/bin:$PATH\"; bash $HOME/mac_iac_gui.sh" & myUsername
```


* Step 7: Save the file `command + S` and save it in the Application File Format to the Desktop. (Default Name is Untitled, change to `Prisma_IaC_Scan_Tool.app`)
* Step 8: (Optional) Create a custom Icon for the app (Assuming you saved the app to the Desktop). In terminal:  `cp pcee_iac_gui_it_tool/prisma.icns $HOME/Desktop/Prisma_IaC_Scan_Tool.app/Contents/Resources/applet.icns`


* Step 9: Double click your new app icon and enjoy! Ensure you read the prompts! 


To uninstall: 

Put the app into the trash and empty it. 


