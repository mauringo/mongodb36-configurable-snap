  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)




# mongodb36-configurable-snap



A fully configurable mongodb 3.6.3 snap 


The Snap configuration files are stored in: /var/snap/mongo36-configurable/common/mongodb.conf 
    
    the snaps mantains data and configuration across installations
    
    use "mongo36-configurable.reset" to reset data and configuration    
    use "mongo36-configurable.restore-conf" to reset configuration
    use "mongo36-configurable.remove-data" to reset data 
    
    
    
    restart the app fater any procedure above   
    

Installable trough snapd:

[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/mongo36-configurable)

https://snapcraft.io/mongo36-configurable

command:
*- sudo snap install mongo36-configurable*


## Step 0 - System setup - if needed
To bulid this snap snapcrft and multipass are needed.

just run:

*- sudo snap install snapcraft*

and then

*- sudo snap install muiltipass*

## Step 1 - Snap Build

Clone the repository, enter inside the folder. then run 'snapcraft'.

## Step3 

have fun.
