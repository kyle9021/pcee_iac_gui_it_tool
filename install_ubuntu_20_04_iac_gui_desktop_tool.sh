#!/bin/bash


if [[ "$DESKTOP_SESSION" == "ubuntu" ]]; then
     sudo chmod 755 pcee_iac_gui_it_tool/iac_script.sh
     sudo cp pcee_iac_gui_it_tool/iac_script.sh /usr/local/bin/iac_script
     sudo cp pcee_iac_gui_it_tool/prisma_icon.jpeg /home/$USER/Documents/prisma_icon.jpeg
     sudo chmod 755 /home/$USER/Documents/prisma_icon.jpeg
     touch /home/$USER/pcee_iac_gui_it_tool/Prisma_IT_IaC_Scan_Tool.desktop
     printf '%s\n' "[Desktop Entry]" >> /home/$USER/Desktop/Prisma_IT_IaC_Scan_Tool.desktop
     printf '%s\n' "Type=Application" >> /home/$USER/Desktop/Prisma_IT_IaC_Scan_Tool.desktop
     printf '%s\n' "Terminal=false" >> /home/$USER/Desktop/Prisma_IT_IaC_Scan_Tool.desktop
     printf '%s\n' "Name=Prisma_IaC_Scan_Tool" >> /home/$USER/Desktop/Prisma_IT_IaC_Scan_Tool.desktop
     printf '%s\n' "Icon=/home/$USER/Documents/prisma_icon.jpeg" >> /home/$USER/Desktop/Prisma_IT_IaC_Scan_Tool.desktop
     printf '%s\n' "Exec=/usr/local/bin/iac_script" >> /home/$USER/Desktop/Prisma_IT_IaC_Scan_Tool.desktop
     sudo chmod 755 /home/$USER/Desktop/Prisma_IT_IaC_Scan_Tool.desktop
     sudo cp /home/$USER/Desktop/Prisma_IT_IaC_Scan_Tool.desktop ~/.local/share/applications/Prisma_IT_IaC_Scan_Tool.desktop
     sudo chmod 755 ~/.local/share/applications/Prisma_IT_IaC_Scan_Tool.desktop
     echo "right-click on the icon on your desktop icon named: Prisma_IT_IaC_Scan_tool and click Allow Launching to finish the install"
  elif [[ "$DESKTOP_SESSION" != "ubuntu"  ]]; then
       	echo "not an ubuntu machine"
fi
exit
