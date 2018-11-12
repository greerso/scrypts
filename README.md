# Install unsuppported miners in smOS
I am not affilliated with the Simpleminer team in any way.  Just a guy that wants access to the latest miners in smOS.  
There is no automatic way to undo what this script does, it can be undone easily with a few linux 
commands.

I have started [The Voskcoin Discord](https://discord.voskcoin.io)

Feel free to create issues here or contact me through the Voskcoin Discord.

Execute the following command from your smOS CLI.

```
sudo bash -c "$(curl https://raw.githubusercontent.com/greerso/smOS-unsupported-miners/master/install.sh)" - [smOSMiner] [URLtoNewMiner.tar.gz]
```

For example to replace ccminer-tpruvot-v2.1 with t-rex-0.7.4-linux-cuda9.1 the command is:
```sudo bash -c "$(curl https://raw.githubusercontent.com/greerso/smOS-unsupported-miners/master/install.sh)" - ccminer-tpruvot-v2.1 https://github.com/trexminer/T-Rex/releases/download/0.7.4/t-rex-0.7.4-linux-cuda9.1.tar.gz```

The smOS miner name must match what is listed on simplemining.net rig groups exactly and include the version number.  Once this script has replaced the miner, you can use smOS gui to make a new rig group for the miner that you replaced but remember it is not the miner that smOS thinks it is, it is the one that you replaced it with.

*It is not recomended to run a script this way unless you trust the source.  Please take the time to read the script and do not execute it unless you understand exactly what it is doing.

ETH: 0x0f64257fAA9E5E36428E5BbB44C9A2aE3A055577

ZEN: zndLiWRo7cYeAKuPArtpQ6HNPi6ZdaTmLFL

BTC: 1BzrkEMSF4aXBtZ19DhVf8KMPVkXjXaAPG
