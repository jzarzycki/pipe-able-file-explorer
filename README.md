# Purpose
Script is meant to be used as a GUI for selecting files inside a linux scripts or pipelines.
It can fork it's output between the current terminal window, and stdout, in order to provide a dmenu-style gui inside the terminal window.
```bash
# this will show a GUI for selecting a file and write the path to selected file to path.txt 
./search_file > path.txt

# this will show a GUI gor selecting a file and open in in less pager
./search_file | xargs less
```

# Controls
Program starts in current folder, start by typing a "/" to start in root directory.<br/>
Backspace deletes last charater.<br/>
Tab autocompletes to the first listed file.<br/>
Enter exits the gui and prints the current search path to original stdout.<br/>
