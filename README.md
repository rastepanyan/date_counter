# date_counter

Story
As a source code administrator, I want to have a script to generate automatic tags

Definition of Done
- The output should be an executable .sh script.
- The tag must be in a form "DATE.COUNTER"
- DATE must be in form YY.MM.DD
- COUNTER must be in form "001", "002", "003", etc.
- When the script is called several times during the same day, the COUNTER must be increased.
- The COUNTER must be reset back to 001 when the date has changed.
- The script must output the new tag on the command line.
- The newly generated tag must be written in a text file named "current.tag" in a directory next to the script
- If "current.tag" is missing, the script must create it with a current tag.
- There is no need to do anything when the tag is 999 (it is not likely to happen)
- Note that the output file must contain only one line!

