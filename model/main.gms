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
* You can update the copyright in the footer by editing the `conf.py` file in
* `doc/source` (look for the lines that have `__author__` and replace them with
* your preferred listing.
***

* set # as end-of-line comment; all text after # is ignored
* (for proper display in GAMS IDE, this needs to be specified in the options, too)
$EOLCOM #
* set up the function to write comments to the log file
file logfile / '' /;
put logfile ;


*----------------------------------------------------------------------------------------------------------------------*
* Preamble

* a simple trick to activate or deactivate parts of your code ( "*" active / "" optional section is ignored )
$SETGLOBAL section_optional ""

* a simple trick to replace every occurence %placeholder% with some name or text
* this is useful to easily read in different include files (e.g., for multiple cases or scenarios)
* or to change the names of output report files
$SETGLOBAL placeholder "some name or text"

*----------------------------------------------------------------------------------------------------------------------*
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
* optional section - this can be activated or deactivated from the preamble
* (useful for long code and multiple include files)

%section_optional%$ONTEXT

* write here some GAMS code that is only active when SETGLOBAL section_optional is set to "*" in the preamble

$ONTEXT
$OFFTEXT
* end of the optional section


*----------------------------------------------------------------------------------------------------------------------*
* end of file - have a nice day!                                                                                       *
*----------------------------------------------------------------------------------------------------------------------*
