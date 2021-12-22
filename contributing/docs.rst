Building This Documentation
===========================

Create virtual environment to isolate build dependencies. This step must only be
done once.

.. code-block:: console

    $ python -m venv .venv

Activate virtual environment. This and the following steps must be done every
time.

.. code-block:: console

    $ . .venv/bin/activate

Install build tools

.. code-block:: console

    $ pip install -r requirements.txt

Building these docs from the root of the repo

.. code-block:: console

    $ sphinx-build -W -b html . built_html_docs/

Display docs site

.. code-block:: console

    $ python -m http.server --directory built_html_docs/ 8080

Push to GitHub Pages
--------------------

.. code-block:: console

    $ cd built_html_docs/
    $ touch .nojekyll
    $ git init
    $ git remote add origin https://github.com/intel-innersource/documentation.practices.innersource
    $ git checkout -b gh-pages
    $ git add -A
    $ git commit -sam "$(date)"
    $ git push --set-upstream origin gh-pages --force
