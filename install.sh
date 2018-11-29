#!/bin/bash

# =======================================================================================
# Run as root
# =======================================================================================
if [ "$EUID" -ne 0 ]
  then echo "Please use sudo"
  exit 1
fi
# ---------------------------------------------------------------------------------------

# =======================================================================================
# Check for valid smOSMiner and newMinerURL
# =======================================================================================
if [[ $# -ne 2 ]] ; then
    echo 'You did not specify smOS Miner Name and new Miner URL'
    exit 1
fi
# ---------------------------------------------------------------------------------------

# =======================================================================================
# Set Variables
# =======================================================================================
# Location of smOS miners
smOSMiner=$1
newMinerURL=$2
newMiner=$(basename -s .tar.gz ${newMinerURL})
smOSMinerRoot="/root/miner_org/"
smOSDownloadURL="http://download.simplemining.net/miners/"
smOSMiners=($(awk -F'"' 'NR!=1 && !/md5/ {print $2}'<<< $(curl -sSL ${smOSDownloadURL})))
# ---------------------------------------------------------------------------------------

# =======================================================================================
# Discover smOS miner binary name
# =======================================================================================
smOSMinerDIR=${smOSMinerRoot}${smOSMiner}
if [ ! -d "${smOSMinerDIR}" ];
	then curl -fsL ${smOSDownloadURL}${smOSMiner}.tar.gz | tar xvz -C ${smOSMinerRoot};
fi
smOSMinerBin="$(find ${smOSMinerDIR}/ -maxdepth 1 -type f -size +512k -executable -printf "%f\n" -quit)"
# ---------------------------------------------------------------------------------------

# =======================================================================================
# Delete selected miner directory
# =======================================================================================
rm -rf ${smOSMinerDIR}
# ---------------------------------------------------------------------------------------

# =======================================================================================
# Download new miner into smOS miner location
# =======================================================================================
mkdir ${smOSMinerDIR}
curl -fsL ${newMinerURL} | tar xvz -C ${smOSMinerDIR} --strip-components=1
newMinerBin="$(find ${smOSMinerDIR}/ -maxdepth 1 -type f -size +512k -executable -printf "%f\n" -quit)"
# ---------------------------------------------------------------------------------------

# =======================================================================================
# Switch out miner and create masquerade symlink
# =======================================================================================
if [ ! -f "${smOSMinerDIR}/${smOSMinerBin}" ];
ln -s ${smOSMinerDIR}/${newMinerBin} ${smOSMinerDIR}/${smOSMinerBin}
fi
chmod +x ${smOSMinerDIR}/${newMinerBin}
chown -R miner:miner ${smOSMinerDIR}
# ---------------------------------------------------------------------------------------

# =======================================================================================
# Done.
# =======================================================================================
echo "###"
echo "$smOSMiner is now $newMiner!"
echo "###"
echo ""
echo ""
echo "###"
echo "Configure your Rig Group for $smOSMiner at simplemining.net remembering that it is now $newMiner and use the appropriate config for the new miner."
echo "###"
# ---------------------------------------------------------------------------------------
