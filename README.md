<pre>
8888888 888     888                                    
  888   888     888                                    
  888   888     888                                    
  888   Y88b   d88P 88888b.  888d888  .d88b.  88888b.  
  888    Y88b d88P  888 "88b 888P"   d8P  Y8b 888 "88b 
  888     Y88o88P   888  888 888     88888888 888  888 
  888      Y888P    888 d88P 888     Y8b.     888 d88P 
8888888     Y8P     88888P"  888      "Y8888  88888P"  
                    888                       888      
                    888                       888      
                    888                       888      
</pre>
                    
Downgrade any xx30 series ThinkPad to the latest [1vyrain compatible](https://github.com/gch1p/thinkpad-bios-software-flashing-guide#bios-versions) BIOS version.

# Usage

Go into your BIOS setup. Navigate to **Security -> UEFI BIOS Update Option**. Set *Flash BIOS Updating by End-Users* to Enabled, and *Secure RollBack Prevention* to Disabled. 

**Make sure you are plugged into power while running this. You WILL brick if you lose power while flashing, guaranteed.**

Boot into any 64-bit Windows install. 

Run `downgrade.bat` (NOT as Administrator - WinFlash64 should request admin on its own). The system will reboot and flash the BIOS region on your device. Voila! You're ready to run 1vyrain.

**NOTE:** Neither this tool nor 1vyrain will modify your EC. You are safe to flash your EC with the battery or keyboard mod at any time as long as you are on a version compatible with the EC mod (check compatibility [here](https://github.com/hamishcoleman/thinkpad-ec#compatibilty-warning)). Both IVprep and 1vyrain will only modify the BIOS region! You can safely use 1vyrain to update to the latest BIOS without losing your other mods! 
