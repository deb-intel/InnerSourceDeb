Building This Documentation
===========================

Install build tools

.. code-block:: console

    $ pip install -r requirements.txt

Building these docs from the root of the repo

.. code-block:: console

    $ sphinx-build -W -b html . built_html_docs/

Display docs site

.. code-block:: console

    $ python -m http.server --directory built_html_docs/ 8080
