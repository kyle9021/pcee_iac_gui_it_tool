# IaC Scanning Tool for IT
[![CodeFactor](https://www.codefactor.io/repository/github/kyle9021/pcee_iac_gui_it_tool/badge)](https://www.codefactor.io/repository/github/kyle9021/pcee_iac_gui_it_tool)

## Purpose:

I wrote this tool for the IT community who are actively working with IaC files and who have access to a instance of Prisma Cloud Enterprise. This avoids the need to install docker, manage python libraries, or even use the terminal (after install). Simple implementations, without the risk of additional libraries or software. The only dependencies are jq and zenity. Both of which have no known vulnerabilies. I've come up with install instructions for MacOS and Ubuntu 20.04. I will be adding other distributions and OS's based on feedback. 

## What it does: 

It will scan IaC project directories or directories which contain IaC files and output the results in a csv report if you'd like. It will also create an entry for the scan in the Prisma Cloud Enterprise Edition Console under Inventory > DevOps

## Theoretical Operationalization for an organization:

To answer this topic, here's my theory based on working with IT for a number of years. If you're an average IT person and the organization you're with is stepping into the cloud, this tool is for you.

At some point in your cloud journey, you may be asked to deploy terraform files or other IaC templates. You'll learn the commands you need to survive such as: `terraform apply/init/delete`. The problem is, you probably won't have the time to really understand how to write terraform files, and/or anlayze them line-by-line before deploying; so if something goes wrong you'd need to contact the developer who wrote the files to correct the issues. 

But maybe since you're in IT/Security you want to ensure you know the vulnerabilies that could potentially be introduced to your new CSP enviornment. So before deploying any IaC files, you run the project directory through this tool before you perform a `terraform apply`. If vulnerabilies are located you can provide actionable intelligence back to your dev team with the exact cause, line of code, and resource which caused the vulnerability to be discovered. Once you've sent this information to the dev team a few times through the csv file report that is created. They might be interested in getting this process into their CI/CD workflow. We've plenty of documentation and tools on how to go about doing that...this isn't that. 

This is for you to look out for the security of your organization and to ensure your team understands the vulnerabilites that can be introduced by deploying IaC files into a production cloud enviornment. This is to save yourself and your team hours of time figuring out what not to do. This is meant to be simple and straightforward. Easily used again and again by your average IT person to bring about DevSecOps, or at least start the conversation. Good luck!

### Install instructions for Ubuntu 20.04

* Step 0: Install git `sudo apt install git`
* Step 1: Install jq `sudo apt-get install jq`  - [link to cve](https://www.cvedetails.com/product/33780/Jq-Project-JQ.html?vendor_id=15837)
* Step 2: Download code: `git clone https://github.com/Kyle9021/pcee_iac_gui_it_tool/`
* Step 3: `bash pcee_iac_gui_it_tool/install_ubuntu_20_04_iac_gui_desktop_tool.sh`
* Step 4: Right-click the shortcut on your desktop and select `Allow Launching`
* Step 5: Double-click your application shortcut and enjoy! Ensure you read the prompts. 


To uninstall:


`bash pcee_iac_gui_it_tool/uninstall_ubuntu_20_04_iac_gui_desktop_tool.sh`

Notes: The install script is made to only install it for the user running the script. You can modify the install script as needed. It should work with any debian based linux distro. It shoould also work with RHEL, but the package manager will require `yum` instead of `apt`. I'd double check that the file locations good for RHEL. You can also optionally hardcode your prisma_api_url, access_key, and secret_key into the script if you'd like. Just ensure you secure your script/app properly after doing so. `chmod 700` add to .gitignore file. Etc. 

### Install instructions for MacOS

* Step 0: Install git `brew install git`
* Step 1: Install jq `brew install jq` - [link to cve](https://www.cvedetails.com/product/33780/Jq-Project-JQ.html?vendor_id=15837)
* Step 2: Install zenity `brew install zenity` - no known vulnerabilies do a google search zenity vulnerabilities.
* Step 3: Download code: `git clone https://github.com/Kyle9021/pcee_iac_gui_it_tool/`
* Step 4: `cp pcee_iac_gui_it_tool/mac_iac_gui.sh $HOME/mac_iac_gui.sh` 
* Step 5: Open Apple Script Editor by hitting `command + spacebar` then type `apple script editor` and hit `enter`
* Step 6: Open a new document `command + N` and then copy the below code into the editor. Don't edit the code below. 


```
set myUsername to (short user name of (system info))
do shell script "export PATH=\"/usr/local/bin:$PATH\"; bash $HOME/mac_iac_gui.sh" & myUsername
```


* Step 7: Save the file `command + S` and save it in the Application File Format to the Desktop. (Default Name is Untitled, change to `Prisma_IaC_Scan_Tool.app`)
* Step 8: (Optional) Create a custom Icon for the app (Assuming you saved the app to the Desktop). In terminal:  `cp pcee_iac_gui_it_tool/prisma.icns $HOME/Desktop/Prisma_IaC_Scan_Tool.app/Contents/Resources/applet.icns`


* Step 9: Double-click your new app icon and enjoy! Ensure you read the prompts! 


To uninstall: 

Put the app into the trash and empty it. 


