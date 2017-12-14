# win-expectancy

The goal of this project is to use machine learning to analyze MTGO match logs and predict the win percentages of each player of an in-progress game of Magic.

## findlogs

MTGO saves its match log files in several separate folders with varying folder names. In order to get log files from MTGO grinders, the cmd.bat script `findlogs` searches through all files for ones whose name matches the pattern "Match_\*.dat" which is how MTGO names its log files. Then findlogs copies those files into a folder. If multiple files have the same name, `findlogs` keeps the most recently updated version, which presumably is the more complete log.
