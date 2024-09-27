# ODS Developer Mode Tutorial

## Install ODS

### Step 1: Get the Correct version of GameMaker

1) Go to the GameMaker [Release Notes](https://gms.yoyogames.com/ReleaseNotes.html) page.
2) Click *Older Versions* to display older versions of GameMaker.
3) Scroll down to version **2023.11.1.129** and hit *Windows* or *macOS* to download the appropriate version for your system.
4) More recent versions will not work with the ODS files.

### Step 2: Clone the ODS Repository
   
1) Go to the [GitHub Repository](https://github.com/jm4157/ODS) for ODS. You should recognize it as the place you found this tutorial.
2) Click on the green button labelled *<> Code*. If needed, navigate to the *Local* tab, then select *Download ZIP*.
3) In your `Downloads` folder, right click *ODS-main.zip* and select *Extract All...*. When prompted to choose a location, choose the `GameMakerStudio2` folder. This should be contained within your `Documents` folder on Windows.
4) This will start a process that may take a minute.
5) Once done, you should see a folder called `ODS-main` inside the `GameMakerStudio2` folder. This is where the game is stored!

### Step 3: Open within GameMaker

1) Open the **GameMaker** app.
2) Select the big button labelled *Open*.
3) This should bring you to the `GameMakerStudio2` folder. Open `ODS-main`, then choose `ODS.ypp`. The Oolong Dating Sim project will open up.
4) Press *F5* on your keyboard to run the game. It'll take a little while to load, especially the first time, but if the Oolong Dating Sim title screen pops up you've done it correctly!
5) In the future opening the **GameMaker** app will show **ODS** under **Recent Projects**. You can click on it to bring up the ODS project faster.

## Dialogue Testing Mode

1) Make sure you have ODS installed on your computer. Use the above tutorial if needed.
2) Write a dialogue json file according to the [guidelines](https://docs.google.com/document/d/1fxF_wjknzB-PeEdsV5rHM-Tml3wHSYBBqcngtWQVOm8/edit?usp=sharing).
3) Navigate to `GameMakerStudio2/ODS-main/datafiles/dev` in your file directory. This is where you cloned ODS earlier, then a few folders deeper.
4) Insert your dialogue file into the folder. Remove any other file that may be in there. Don't worry, you deleting them won't affect the main repository.
5) Inside the project (as in step 3 of the Installation tutorial), press *F5* to run the game. Once on the homescreen, hold down *Ctrl + D* while you click *New Game*.
6) This will initiate the dialogue written in the dialogue file.
7) As you go through, make sure to take note of any errors that pop up. They should give clear indication of what went wrong, so you can fix it. If not, contact Troupple to help you understand.
8) The game reads the files at runtime, so once you have the game open you should be able make changes to the dialogue file, and those changes will appear once you initiate a new dialogue.
