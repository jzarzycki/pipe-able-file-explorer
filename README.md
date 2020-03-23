# Purpose
Script is meant to be used as a GUI for selecting files inside a linux pipeline.
It can redirect it's output to the current terminal window, in order to show GUI and then revert the change in order to print the selected file down the pipe

# Usage
```bash
# this will show a GUI for selecting a file and write the path to selected file to path.txt 
./my_search > path.txt
```

# Controls
Program starts in current folder, start path with a "/" to start in root directory<br/>
Backspace deletes last charater<br/>
Tab autocompletes to the first listed file<br/>
Enter exits the gui and prints the filepath to original stdout<br/>
