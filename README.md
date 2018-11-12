# Install unsuppported miners in smOS
I am not affilliated with the Simpleminer team in any way.  Just a guy that wants access to the latest miners in smos.
There is no automatic way to undo what this script does, it can be undone easily with a few linux 
commands.

In the latest version of smOS, miners do not download until you try to use them, so you must first 
configure a rig group and attempt to mine with the miner that you would like to replace in order 
for it to download to the miners_org directory.

The script will list the miners currently install in 
smOS /root/miners_org and ask which you would 
like to replace. It will then check my GitHub repository for new miners and ask which you would like 
to add to smOS. It will then make a backup of the existing miner, download the new miner and create a 
symlink in the selected directory.  Try to replace with similar, if you're adding a variant of 
sgminer, replace sgminer, same for ccminer etc.  Do not try to replace Claymore miners.

Once this is done, you can use smOS gui to make a new rig group for the miner that you replaced but remember it is not the miner that smOS thinks it is, it is the one that you replaced it with.

I'll be making further enhancements such as reverting to the default miners.

Feel free to create issues here, comment on https://steemit.com/crypto/@greerso/one-line-script-to-add-unsupported-miners-to-smos or contact me through the Voskcoin Discord or sub-Reddit.

Execute the following command as root from your smOS CLI.

```
sudo bash -c "$(curl https://raw.githubusercontent.com/greerso/smOS-unsupported-miners/master/install.sh)"
```

*It is not recomended to run a script this way unless you trust the source.  Please take the time to read the script and do not execute it unless you understand exactly what it is doing.

ETH: 0x0f64257fAA9E5E36428E5BbB44C9A2aE3A055577

ZEN: zndLiWRo7cYeAKuPArtpQ6HNPi6ZdaTmLFL

BTC: 1BzrkEMSF4aXBtZ19DhVf8KMPVkXjXaAPG
