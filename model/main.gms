$TITLE New project based on the stub GAMS project at <https://github.com/iiasa/gams_stub>

***
* Documentation - project name
* ============================
* This GAMS project was created using the stub GAMS project on `Github <https://github.com/iiasa/gams_stub>`_.
*
* You can write any documentation and comments here using reStructuredText (rst) formatting for links, tables, etc.
* Whatever you write here (or in any other .gms files in the 'model' folder and subfolders) will be converted
* into html pages by the command ``make html``.
* The string ``***`` marks the start and end of a comment section for the make command.
* The string ``*`` at the beginning of a line in the comment section is ignored.
*
***

* set # as end-of-line comment; all text after # is ignored
* (for proper display in GAMS IDE, this needs to be specified in the options, too)
$EOLCOM #
* set up the function to write comments to the log file
file logfile / '' /;
put logfile ;

*start your GAMS code here...

* write something to the log file
put_utility 'log' /'+++ This statement is written to the log file! +++ ' ;

***
* Mathematical formulation
* ~~~~~~~~~~~~~~~~~~~~~~~~
* You can use LaTeX for writing beautiful math...
*
* .. math:: e^{i\pi} + 1 = 0
***

* whenever you include this file, the computation time since the start of the GAMS run is written to the log file
$INCLUDE includes/aux_computation_time.gms

*----------------------------------------------------------------------------------------------------------------------*
* end of file - have a nice day!                                                                                       *
*----------------------------------------------------------------------------------------------------------------------*