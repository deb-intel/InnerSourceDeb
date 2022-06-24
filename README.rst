What is InnerSource?
====================

This site is hosted at: https://intel-innersource.github.io/documentation.practices.innersource/

InnerSource is:

- Best Practice Documentation

  - BKMs around writing and maintaining quality code
  
  - https://github.com/intel-innersource/documentation.practices.innersource
  

- Metric Collection / Granular Inventory for all projects

  - Collect data for use by the portal / hub

  - https://github.com/intel-innersource/applications.web.inner-source-portal.ml

  - What are all the repos / projects members of an org are working on
  - SDE
  - SWLC
  - Documentation within repos
  - Tracking of reuse and contribution across project: 1bom
  - Tracking adoption of best practices

- InnerSource Portal / Hub

  - Central location for all the above info
  
  - https://github.com/intel-innersource/applications.web.inner-source-portal.ui-mono


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
    blogpost-full

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
    contributing/ops

.. toctree::
    :glob:
    :maxdepth: 2
    :caption: Templates

    template_files/CONTRIBUTING
    template_files/CODE_REVIEW
    template_files/CODE_PLAN

.. toctree::
    :glob:
    :maxdepth: 2
    :caption: Practices and Guildelines

    guidelines/*

.. toctree::
    :glob:
    :maxdepth: 2
    :caption: Git BKMs

    git_bkms/*

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

Doc Template 
############

Use the ``doc-template.rst`` to create a new document. Follow along based on your operating system, using a Terminal.

.. note::
   To change the default app used to open the `doc-template.rst`, follow the `PC Mag instructions`_.

Navigate to the project root. 

If using WSL, run:

.. code-block:: bash

   ./doc-wsl.sh

If using a Linux distro, change file permissions: 

.. code-block:: bash

   chmod u+x ./doc-lnx.sh

Run command to open template.

.. code-block:: bash

   ./doc-lnx.sh


#. Save the `doc-template.rst` with a new `filename`` to the apppropriate subdirectory.
#. If using the `toctree` directive *without* the `:glob:` option, add the new file name below a toctree.
#. If using the `toctree` directive *with* the `:glob:` option, no further action is required.




.. _PC Mag instructions: https://www.pcmag.com/how-to/how-to-customize-your-default-apps-in-windows-and-macos


