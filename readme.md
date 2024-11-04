# Automatic repair/restore script
This is a lightweight and intuitive all-in-one script for restoring damaged software on your system, bringing together all those tools that the system itself provides to repair itself.
## Change language or translate
From the `config.properties` file you can change the language to an existing one.
If the language does not exist you can copy the `en.properties` file and translate it to your language.
You can find the language codes from [here](https://es.wikipedia.org/wiki/ISO_639-1) and rename the file according to the language you have translated it to.
## How to use?
Clone or download the repository, unzip it and double-click the `auto-repair.cmd` file and that's it.
### System requirements
It requires having a stable internet connection, having the Windows Update service turned on and finally having an officially supported version of Windows.
### Instructions for use
- The **[1]** option analyzes the integrity of the system files and, if damaged files are found, repairs them.
- The **[2]** option replaces the existing components in the component store with new ones.
- The **[3]** option repairs and scans the partition configured in `config.properties`, by default it is the system **C** partition.
- The **[4]** option checks whether the component store can be repaired.
- The **[5]** option deletes the temporary files that are downloaded when using the **[2]** option.
- The **[6]** option thoroughly checks the status of the configured partition and indicates whether it needs to be repaired.
- The **[7]** option defragments the configured partition, it is useful if you have a hard disk and you do not use your PC for a long time, causing the automatic defragmentation never to be completed. **If you have an SSD do not use this option unless you want a modern paperweight.**
## Change separator design and colors
From the `config.properties` file you can customize the script layout to your liking.

The first value represents the background color and the second the text color. For example: 80 *That would be gray background with black text.*

| Hexadecimal Value | Color            |
|-------------------|------------------|
| 0                 | Black            |
| 1                 | Blue             |
| 2                 | Green            |
| 3                 | Aquamarine       |
| 4                 | Red              |
| 5                 | Purple           |
| 6                 | Yellow           |
| 7                 | White            |
| 8                 | Gray             |
| 9                 | Light blue       |
| A                 | Light green      |
| B                 | Light aquamarine |
| C                 | Light red        |
| D                 | Light purple     |
| E                 | Light yellow     |
| F                 | Bright white     |
