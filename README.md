# Purpose
Script is meant to be used as a GUI for selecting files inside a linux pipeline.
It can redirect it's output to the current terminal window, in order to show GUI and then revert the change in order to print the selected file down the pipe

# Usage
```bash
# this will show a GUI for selecting a file and write the path to selected file to file.txt 
./my_search > file.txt
```

# Controls
Program starts in current folder, start path with a "/" to start in root directory
Backspace deletes last charater
Tab autocompletes to the first listed file
Enter exits the gui and prints the filepath to original stdout
