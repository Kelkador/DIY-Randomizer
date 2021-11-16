# DIY-Randomizer
I like Wario too much so I made a way to play 185 DIY games from a pool of 100,000 lol

## What Do I Need?
- Python (I used 3.8 but all later versions should be fine) = https://www.python.org/
- The backup of Doujinsoft (at the bottom of this about page("What are your backup plans?")) = https://diy.tvc-16.science/about
- ndstool.exe = http://darkfader.net/ds/files/ndstool.exe
- A backup rom of WarioWare DIY renamed to "WarioWare.nds" (Not provided)

## How do I get started?
1. Download and unzip everything above (Doujinsoft will take a hot minute to unzip, this is normal)
2. Put ndstool.exe and WarioWare.nds into the directory labelled "Work"
3. Open the dsoft-backup folder you unzipped and got to \doujinsoft2\mio\game and copy the full path to that directory
4. Edit the file Randomize.bat, edit the first two lines to read:
SET src_dir=(Path to the directory obtained in step 3)
SET work_dir=(Path to the directory labelled "Work" included in this repository)
Save your changes and you are finished! Now every time you double click "Randomize.bat" the tool will inject 185 micro games into "DIY_Patched.nds" and "DIY_Patched.sav" and put them into the "Work" directory

## Emulator Troubleshooting

Since 100% of people will probably experience this on emulator, here's how to get into game!

I will walk you through on Desmume, this is my emulator of choice and I don't know the process on other emulators http://desmume.org/download/
1. After opening DIY_Patched.nds, you're only halfway there! To get the other 90 games the tool injected you will need to hit File > Import Backup Memory and locate "DIY_Patched.sav"

![image](https://user-images.githubusercontent.com/82776543/142073139-ca98d34e-0039-45bf-aa46-e330868e124d.png)

2. Make sure when you import the save, the settings looks EXACTLY like the image below. Failure to do so will make the save not work!
 
![image](https://user-images.githubusercontent.com/82776543/142073411-605de1a6-17ae-4a82-9c09-0a827cb63e36.png)

3. Afterwards, skip past the opening cutscene/title screen/DS warning and click the diy shop and enter.

![image](https://user-images.githubusercontent.com/82776543/142073784-9829c98a-dce8-4df0-962b-e565fc865f73.png)

4. Lastly, click on the game section, game blender, and choose "Mix All" and you're in!

![image](https://user-images.githubusercontent.com/82776543/142074120-962d4dc5-6a4b-49a4-869c-e03b092debe2.png)

## FAQ

**Why?**
A: Excellent question I'm not sure myself

**Will there be NSFW content?**
A: Inevitably, yes

**Can I filter it out?**
A: Unfortunately, no.

**Cool code you got, you make it yourself nerd?**
Half of it, yes. For the Python script bully https://twitter.com/voxsecundus instead.

**Desmume is missing an option in the guide!**
A: Use the standalone version I linked, other versions may not have the necessary features.

**I need to get in contact!**
A: Fastest response will be my Twitter, DM me https://twitter.com/Kelkador
