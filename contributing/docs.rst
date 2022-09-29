.. _docs:

How to Contribute Docs
######################

Create virtual environment to isolate build dependencies. This step must only be
done once.

* Build these docs from the root of the repo
* `Use Doc Template`_ to create a new reStructuredText (RST) file 

Use Doc Template
****************

Follow `Instructions` below to create a new RST document. 

Follow along using a Terminal.

* Use the `doc-template.rst` to create RST file

* In the Template, change the :file:`ref label` at very top of doc.

* Save the file to the apppropriate subdirectory (e.g. Guidelines, etc).

* If using the `toctree` directive *without* the `:glob:` option, add the new file name below a toctree.

Instructions
************

Use our bash script to create a RST file.

#. Navigate to the project root. 

#. If using WSL, run:

   .. code-block:: bash

      ./doc-wsl.sh

#. If using a Linux distro, change file permissions: 

   .. code-block:: bash

      chmod u+x ./doc-lnx.sh

#. Run command to open template.

   .. code-block:: bash

      ./doc-lnx.sh


Install requirements
********************

.. code-block:: console

   python -m venv .venv

Activate virtual environment. This and the following steps must be done every
time.

.. code-block:: bash

   .venv/bin/activate

Install build tools

.. code-block:: bash 

    pip install -r requirements.txt

Build & View
*************

Use the `Makefile` to build or test documentation. 

#. Run command to build html.

   .. code-block:: bash
      
      make html

#. Display docs site

   .. code-block:: console

      python -m http.server --directory _build/ 8080

#. Clean the build directory.

   .. code-block:: bash
    
      make clean

#. Deactivate the venv.

   .. code-block:: bash 

      deactivate 

Push to GitHub Pages
********************

.. code-block:: console

    $ cd _build/
    $ echo .doctrees/ >> .gitignore
    $ touch .nojekyll
    $ git init
    $ git remote add origin https://github.com/intel-innersource/documentation.practices.innersource
    $ git checkout -b gh-pages
    $ git add -A
    $ git commit -sam "$(date)"
    $ git push --set-upstream origin gh-pages --force
