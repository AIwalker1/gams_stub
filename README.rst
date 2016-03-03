A GAMS Project Stub
===================

This is a stub for a new `GAMS <http://gams.com/>`_ project. It contains the following features:

1. Automatic documentation from reStructuredText comments in the GAMS file(s)
2. Writing comments to the GAMS log file during a GAMS run
3. Auxiliary function to write the computation time (since start of the GAMS run) to the log file

Dependencies
------------

This stub depends on

1. `Sphinx <https://pypi.python.org/pypi/Sphinx>`_

Making a New Project
--------------------

Choose a project name and run the following commands replacing ``<project name>`` 
with your choice::

    git clone https://github.com/iiasa/gams_stub.git <project name>
    cd <project name>
    ./make_proj.sh <project name>

You should now have a fresh new repository with your project ready to go. You
can sync it with Github via::

    git remote add origin git@github.com:<user name>/<project name>
    git push origin master

Documentation
--------------

On *Nix Platforms
~~~~~~~~~~~~~~~~~

After you install the project locally, you can generate documentation by::

    cd doc
    make html

You can serve the documentation locally via::

    make serve
	
You can then view the docs at http://localhost:8000/build/html/

On Windows
~~~~~~~~~~

Follow the above instructions replacing ``make`` with ``./make.bat``.
