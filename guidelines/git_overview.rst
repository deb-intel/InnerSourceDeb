.. _git_overview:

Git Overview
############

Git is an open source version control system with automated tracking and support for branch management and workflows. This page gives an descriptive overview of how Git works.

.. contents::
   :local:
   :depth: 1

Prerequisites
*************
* :ref:`Install Git<git_install>`

After installing Git, there are two options.

* Clone an existing repository, where git was initialized.
  See :ref:`github_fork_clone`.

* Initialize an existing directory (and push to a repository)

Initialize directory
====================

#. Change directory into where you want Git version control.

   .. code-block:: bash

      cd <my-directory>

#. Initialize existing directory,

   .. code-block:: bash

      git init

Learn more
==========

Learn more about :ref:`basic Git configuration<github_config>`.

Git Repository Overview
***********************

.. figure:: /_figures/git-overview-basic.png
  :alt:  Git Repository Overview

  Git Repository Overview

Working Directory
=================

This state represents a snapshot of the latest changes merged into the default branch in the `Local repository`_. By default, tracking is applied.

After a directory is initialized, Git adds a hidden `.git` directory with  sub-directories and configuration files. This hidden directory contains a lot of plumbing and mechanics. For practical purposes, we focus on the `config` file. For more details, see `Git Internals`_.

Think of the :file:`config` file like a packing slip, or manifest, which accompanies a package and describes its contents. When you run special ``git config`` commands, the :file:`config` file is modified. Some items this file records:

* ``core`` - specific configuration values (updates, line-endings, etc.)
* ``remotes`` - placeholder names (e.g., origin, upstream) and associated URLs
* ``branch`` - default branch

To configure items in this file, see instructions in :ref:`github_config`.


Key Commands
------------

.. list-table::
   :widths: auto
   :header-rows: 1

   * - Command
     - Description

   * - ``git log``
     - Show latest merge commits on default branch in abbreviated form.

   * - ``git log --graph``
     - Show graphical representation of the commit history.

Staging area
============

This intermediary state can be helpful while you develop and decide what you want or don\'t want before you commit. When you start modifying files, they are "not staged for commit." You can:

* Stage files to be committed
* Unstage files

Think of the *staging area* as a step in a workflow. See `Git File Lifecycle`_.

Remember that `.git/` hidden directory? Git stores `staging` information in an :file:`.git/index` file, inside this hidden directory.

Key Commands
------------

.. list-table::
   :widths: auto
   :header-rows: 1

   * - Command
     - Description

   * - ``git status``
     - Show status of working tree, including files not staged.

   * - ``git checkout -- .``
     - Discard changes made in current working directory.

Local repository
================

A local repository maintains a fluid state in relation to a remote repository.
Your local repository requires maintenance. In your local repository, you can:

* configure one or more *remote*
* maintain branches
* merge branches from other remotes
* fetch or pull from other remotes and branches
* push to other remotes and branches

A critical relationship exists between your local repository and remote repositories. A **Contributor Guide**, in each Git repository, should define this relationship in a workflow.

Key Commands
------------

.. list-table::
   :widths: auto
   :header-rows: 1

   * - Command
     - Description

   * - ``cat .git/config``
     - Show configuration values for working directory from root-level

Remote repository
=================

A `remote` maintains a fluid state that may be managed by one or more people, contributor guidelines, and supporting processes (e.g., CI/CD).

A `remote` is a placeholder (or reference) that stands for a website URL. When you perform a Git action on a remote, you interact with a URL. Consider two common examples of `origin`.

Clone
-----

When you simply `clone` a Git repository, you establish a *two-way* relationship. You receive the remote, `origin`, for free. Its `namespace` reflects the root-level repository, found in the website URL. For example, run commands in a test directory:

* :command:`git clone git@github.com:intel-innersource/documentation.practices.innersource.git`.

* :command:`git remote -v`

The default namespace for origin is "intel-innersource". It appears after `git@github.com` like so: "git@github.com:intel-innersource..."

Fork-and-Clone
--------------

When you `fork-and-clone` a Git repository, you establish a *triangular* relationship between remotes. Run commands in a test directory.

* Follow :ref:`fork-and-clone-start`, creating remotes `origin` and `upstream`
* :command:`git remote -v`

Now the namespace for origin is "your-username". It appears after
`git@github.com` like so: "git@github.com:<your-username>..."

How you configure remotes can differ, depending on the Git workflow.

Key Commands
------------

.. list-table::
   :widths: auto
   :header-rows: 1

   * - Command
     - Description

   * - ``git remote -v``
     - Show repository remotes in verbose mode

Git File Lifecycle
******************

.. figure:: /_figures/git-file-lifecyle.png
  :alt:  Git File Lifecycle

  Git File Lifecycle

Git recognizes files as `tracked` or `untracked`, where unmodified is the default state for the current working directory, or *working tree*.
*Tracked* files are those included in the working tree. *Untracked* files are those not included in the working tree.

Work in short cycles, staging the files you plan to commit. One cycle is:

* edit/add a file
* `git add` file(s)
* `git commit` file(s)

When you work in short cycles, managing Git is simple and effective.

.. note::

   After the above cycle is complete, you decide when to * `git push` commit(s). Consider the above three bullets as the minimum steps to keep the working tree clean while you develop content or code.

See also :ref:`github_workflows`

.. _Git Internals: https://git-scm.com/book/en/v2/Git-Internals-Plumbing-and-Porcelain#ch10-git-internals


