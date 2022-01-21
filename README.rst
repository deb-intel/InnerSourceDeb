What is InnerSource?
====================

This site is hosted at: https://probable-fiesta-6f2be87d.pages.github.io/

Many companies use the word “innersource” to describe how their engineering teams work together on code.
Innersource is a development methodology where engineers build proprietary software using best practices
from large-scale open source projects, like Kubernetes or Microsoft’s Visual Studio Code.

Large-scale open source projects require coordination and teamwork across thousands of contributors. The
most successful ones are driven by a vision for their future, in addition to day-to-day user needs: speed,
reliability, and functionality. The scale at which these operate can teach us a few lessons—and help your
business build better software, faster using innersource.

- https://resources.github.com/whitepapers/introduction-to-innersource/

.. toctree::
    :glob:
    :maxdepth: 1
    :caption: InnerSource Overview

    overview/innersource_overview

.. toctree::
    :glob:
    :maxdepth: 2
    :caption: Portal

    portal/Use Cases

.. toctree::
    :glob:
    :maxdepth: 2
    :caption: Community

    GitHub Repo <https://github.com/intel-innersource/documentation.practices.innersource>
    FAQ
    contributing/docs

.. toctree::
    :glob:
    :maxdepth: 2
    :caption: Templates

    templates/CONTRIBUTING

.. toctree::
    :glob:
    :maxdepth: 2
    :caption: Practices and Guildelines

    guidelines/*

Indices and tables
==================

* :ref:`genindex`
* :ref:`search`


Build instructions
==================

Use the Makefile to build or test documentation. 


#. Run command to build html.

   .. code-block:: bash
      
      make html

#. Navigate to the `_build/html/` directory and open index.html

#. You may also use the Python `http-server` module.

   #. In a separate Terminal, launch server:
   
      .. code-block:: bash
         
         python -m http.server 8080 --bind 127.0.0.1

   #. Copy the URL shown in the command line (e.g., http://127.0.0.1:8080/)

   #. Visit the page to view the html build. 


#. Optional: Use a virtual environment to develop or test. 

   .. code-block:: bash
      
      make venv

#. Clean the html build and virtual environment. 

   .. code-block:: bash
      
      make clean

