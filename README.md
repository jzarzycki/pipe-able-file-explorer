# Purpose
Script is meant to be used as a GUI for selecting files inside a linux scripts or pipelines.
It can fork it's output between the current terminal window, and stdout, in order to provide a dmenu utility inside of the terminal window.
```bash
# this will show a GUI for selecting a file and write the path to selected file to path.txt 
./selectcli.sh > path.txt

# this will show a GUI gor selecting a file and open in in less pager
less $(./selectcli.sh)
```

# Controls
Program starts in current folder, type a "/" to enter root directory.<br/>
Backspace deletes last charater.<br/>
Tab autocompletes to the first listed file.<br/>
Enter exits the gui and prints the current search path to original stdout.<br/>
