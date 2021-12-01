.. _github_config:

GitHub Configuration
####################

This page explains how to set up an SSH key, fork and clone, and configure remotes for contributions to an upstream repository.
We use the `InnerSource documentation repository`_ , the source of this page, as an example. Follow along by viewing the repository.

.. contents::
   :local:
   :depth: 1

For for initial Git configuration, follow the Intel 1Source instructions below. Upon completion of these steps, restart the process below.

* `1Source Onboard Process`_
* `1Source Environment Setup`_

SSH Configuration
*****************

We recommend using SSH for connecting with GitHub, mainly for security reasons. Whereas both HTTPS and SHH protocols are acceptable, we prefer using SSH because its benefits outweigh the risks associated with using HTTPS.
Using SSH also does not require entering a password for basic push/pull events.

First, follow the SSH instructions from 1Source:`Connect to GitHub with SSH`_.
Second, follow GitHub instructions on `Checking for or generating SSH keys`_.
For additional help, follow the multi-platform instructions below.

Verify or create an SSH key
===========================

Follow these steps to verify or generate an SSH key. If you don\'t have an existing SSH key, you may also follow the GitHub instruction,
`Generating a new SSH key`_.

#. Open a Command Line Interface (CLI) on your workstation.

#. Enter a command to verify your workstation has an existing SSH key.

   .. tabs::

      .. tab:: Linux OS

         .. code-block:: bash

            ls -la ~/.ssh

      .. tab:: Git Bash for Windows

         .. code-block:: bash

            ls -la ~/.ssh

      .. tab:: PowerShell

         .. code-block:: bash

            ssh

         .. note::

            If using PowerShell and Windows 10 Fall 2018 build or later, the ssh client should be installed. A message like the one below should appear.

            usage: ssh [-46AaCfGgKkMNnqsTtVvXxYy] [-B bind_interface]
            [.......................................................]


#. View the SSH public key, or verify which agent is used. 

   .. tabs::

      .. tab:: Linux OS

         .. code-block:: bash

            cat ~/.ssh/id_rsa.pub

      .. tab:: Git Bash for Windows

         .. code-block:: bash

            cat ~/.ssh/id_rsa.pub

      .. tab:: PowerShell

         For PowerShell on Windows 10 or later, follow these steps.

         .. code-block:: bash

            Get-WmiObject win32_service | ?{$_.Name -like 'ssh-agent'} | select PathName


#. If using PowerShell, follow these instructions to use OpenSSH and
   `Make PowerShell Remember SSH PassPhrase`_.

Add SSH public key to GitHub Account
====================================

#. If you already added your SSH key to GitHub, skip the following section.

#. On GitHub in upper right, select the drop-down menu below your profile.

#. Select :guilabel:`Settings`.

#. In the left-side menu, select :guilabel:`SSH and GPG keys`.

#. On the page `SSH keys`, click the button `New SSH key`.

#. Return to your CLI to view your public SSH key.

View local SSH public key
-------------------------

.. tabs::

   .. tab:: Linux OS

      .. code-block:: bash

         cat ~/.ssh/is_rsa.pub

   .. tab:: Git Bash

      .. code-block:: bash

         cat ~/.ssh/is_rsa.pub

   .. tab:: PowerShell

      .. code-block:: bash

         Get-Content -Path $HOME\.ssh\id_rsa.pub | Set-Clipboard

#. In Linux or Git Bash, you may enter the command to copy SSH public key
   :command:`clip < ~/.ssh/id_rsa.pub`

   .. note::
      If the `clip` command doesn't work, copy the contents of the
      :file:`id_rsa.pub` from the previous step.


Add to GitHub SSH public key
----------------------------

#. Paste your SSH key into the "Key" field.

#. In the Title field, enter a descriptive label, preferably one
   connected to your workstation or laptop.

#. Select :guilabel:`Add SSH key`.

#. If prompted, enter your GitHub password.

   See also: `Adding a new SSH key to your GitHub account`_.

Fork and Clone Model
********************

We fork and clone a repository to use a conventional model of contributing to an upstream repository where several contributors are engaged in development. In this type of model, several contributors may be working simultaneously on:

* Topics/Features
* Bug Fixes
* Experiments

Forking allows users to experiment freely without impacting the original, or "upstream", project. Contributors may fork a repository to:

1) Make individual contributions to upstream;
2) Make aggregate contributions, as an organization, to upstream;
3) Extend an existing project and develop it in a new direction

Using a fork-and-clone model--while adding an upstream and using branching--offers a safe, secure method for collaborative development. In turn, this allows each contributor to work in isolation during development. This collaborative development model contrasts with a model where users
**only clone** a repository and use one remote, called "origin".

In this instruction, we focus on use case 1, where our purpose is to make individual contributions to the collective development of upstream documentation. The upstream of docs we use here could also be a code base.

If you already created an SSH key on your system and added it to your GitHub account, go directly to `Fork and Clone Instruction`_.

.. _fork-and-clone-start:

Fork and Clone Instruction
==========================

#. Navigate to the root level of the repository where the README appears, and
   find the :guilabel:`Fork` button in the upper right.

#. Select the :guilabel:`Fork` button. Then select the GitHub account where
   you want the fork located.

#. Next, navigate to your *forked copy* of upstream (not original upstream).
   Your forked copy shows your GitHub username, below which "forked from..." appears in the upper left.

#. On your forked copy, select green button :guilabel:`Code` and then SSH.

#. Select the :guilabel:`copy icon` next to address starting with `git@..`

#. Open a CLI on your system and navigate to where you want to save this docs
   project.

#. In your CLI, enter this command to clone this documentation project.
   Remember, we use this documentation repository only as an example.

   .. tabs:: 

      .. tab:: Linux

         .. code-block:: bash

            git clone git@github.com:[yourusername]/documentation.practices.innersource.git

      .. tab:: Git Bash for Windows

         .. code-block:: bash

            git clone git@github.com:[yourusername]/documentation.practices.innersource.git

      .. tab:: PowerShell

         Clone to your home directory to an `example` directory.

         .. code-block:: bash

            git clone git@github.com:[yourusername]/documentation.practices.innersource.git $HOME/example

   .. note::

      When you clone a repository, you receive the remote "origin" for free.

#. Next, add a remote named :file:`upstream`. Again, we'll use
   the repository for these docs as the example.

#. In your browser, navigate to the GitHub upstream, or the
   original repository, from which you create a forked copy.

#. On the upstream repository, select green button :guilabel:`Code`
   and then SSH.

#. Select the :guilabel:`copy icon` next to the address starting with `git@..`

#. Enter the command to create a remote named "upstream" while in the
   same `InnerSource documentation repository`_.

   .. code-block:: bash

      git remote add upstream git@github.com:intel-innersource/documentation.practices.innersource.git

#. Now verify that both "remotes" exist in the repository.

   .. code-block:: bash

      git remote -v

#. Your CLI should show at least these two remotes.

   .. code-block:: console

      origin         git@github.com:[username]/documentation.practices.innersource.git (fetch)
      origin         git@github.com:[username]/documentation.practices.innersource.git (push)
      upstream       git@github.com:intel-innersource/documentation.practices.innersource.git (fetch)
      upstream       git@github.com:intel-innersource/documentation.practices.innersource.git (push)

   .. note::

      For an upstream remote, instead of the "username" after `git@github.com`, the organizaton name appears: intel-innersource. It\'s common that an upstream project organization name is used for an upstream remote.

#. Verify that you can pull changes from the upstream remote.

   .. code-block:: bash

      git pull upstream main

#. Your CLI should show output similar to the following--assuming you just
   forked and cloned.

   .. code-block:: console

      From github.com:intel-innersource/documentation.practices.innersource
      * branch            main       -> FETCH_HEAD
      Already up to date.

Congratulations! You successfully configured Git to work on the command line, and you successfully added a remote.


Next Steps
**********

* :ref:`github_workflows`

.. _Generating a new SSH key: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

.. _Adding a new SSH key to your GitHub account: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

.. _1Source Environment Setup: https://1source.intel.com/docs/faq/environment_setup

..  _1Source Onboard Process: https://1source.intel.com/onboard

.. _Connect to GitHub with SSH: https://1source.intel.com/docs/faq/github#how-to-connect-github-with-ssh

.. _Checking for or generating SSH keys: https://docs.github.com/en/authentication/connecting-to-github-with-ssh

.. _Make PowerShell Remember SSH PassPhrase: https://gist.github.com/danieldogeanu/16c61e9b80345c5837b9e5045a701c99

.. _InnerSource documentation repository: https://github.com/intel-innersource/documentation.practices.innersource
