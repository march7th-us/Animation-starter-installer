# Animation-starter-installer
When playing games with wine on linux, I was plagued by anti-cheaters,A launcher that can bypass the cheater. So far, I've only tried Honkai: Star Rail, This project is a synthesis of several projects, I just wrote an installer.

## Insatll
The required installation dependencies are wine-mono wine-gecko mingw-w64 git meson nasm glslang

Enter in the terminal:  
``` shell
chmod +x install.sh
./install.sh
```

Install the dependencies manually if an error occurs

If there are no errors, type in the terminal:  
`chmod +x setup.sh`  
`./setup.sh`

Finally, you need to enter the absolute path to your game's main program.  
For example:  
`/home/xxxx/ntfs/GenshinImpact.exe`

## Launch the game
Once installed, simply type in the terminal:  
`animation-starte`
