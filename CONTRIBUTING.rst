.. _contributing:

Contribution Guidelines
#######################

We welcome contributions to the InnerSource Documentation project. 

To contribute, follow the guidelines outlined in this document.

Prerequisites
**************

- Familiarize yourself with Git and GitHub. For convenience, numerous links that pertain to the InnerSource Documentation project are referenced throughout this document.
- Obtain an InnerSource-specific GitHub account through `Intel 1Source <https://1source.intel.com/docs/getting_started/onboard>`__.

Set up Git
**********

- To contribute to the InnerSource Documentation repo, use the :ref:`github_fork_clone` method. To clone the InnerSource Documentation repo, use:

  .. code-block::

     $ git clone git@github.com:intel-innersource/documentation.practices.innersource.git

-  Submit your changes directly with a `pull
   request <https://github.com/intel-innersource/documentation.practices.innersource/pulls>`__.
-  Log a bug or feedback with an
   `issue <https://github.com/intel-innersource/documentation.practices.innersource/issues>`__.


Contribution workflow
*********************

This project uses the `GitHub flow <https://docs.github.com/en/get-started/quickstart/github-flow>`__ for project collaboration and contribution. In a GitHub flow, contributors create a branch, make changes to a file(s), create a pull request, address comments from reviews, and merge the pull request into the project. 

.. note::
   An alternative Git branching model is the `Gitflow workflow <https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow>`__ that uses feature branches and multiple primary branches. 

To submit your contributions for review, first follow the appropriate workflow--*developer* or *technical writer*--as described in :ref:`github_workflows`.

-  Make sure your code is in line with our `coding conventions <#coding-conventions>`__ and :ref:`docs_guidelines`.
-  Create an `issue <https://github.com/intel-innersource/documentation.practices.innersource/issues>`__ describing the problem you are fixing, or the documentation you are adding.
-  Submit a `pull request <https://docs.github.com/en/free-pro-team@latest/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request>`__ into the dev branch. Reference the issue created in the previous step in the pull request.
-  A pull request may impact many files but should be limited to one issue to enable efficient review(s)

All pull requests require review and approval from at least one member in the :file:`CODEOWNERS.md`, located at the root directory.

Coding conventions
******************

The InnerSource Documentation project uses `reStructuredText`_ and `Sphinx Docs`_.



.. _Sphinx Docs: https://www.sphinx-doc.org/en/master/
.. _reStructuredText: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
