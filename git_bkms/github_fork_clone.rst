.. _github_fork_clone:


GitHub Fork and Clone
#####################

This page explains how and why to set up a fork and clone method for contributions.

We fork and clone a repository to use a common model for contributing to an upstream repository, where several contributors are engaged in development. In this type of model, several contributors may be working simultaneously on:

* Topics/Features
* Bug Fixes
* Experiments

Forking allows users to experiment freely without impacting the original, or "upstream", project. Contributors may fork a repository to:

1) Make individual contributions to an upstream repository;
2) Make aggregate contributions, as an organization, to an upstream repository;
3) Extend an existing project and develop it in a new direction

Using a fork-and-clone model--while adding an upstream and using a branching method--offers a safe and secure way to collaborate. In turn, forking allows each contributor to work independently during development. This collaborative development model contrasts with a model where users may **only clone** a repository and use the default remote, called "origin".

In this instruction, we focus on use case 1. Here, we illustrate how to make individual contributions to collective development of upstream documentation. The upstream documentation used here could also be an upstream code base.

If you already created an SSH key on your system and added it to your GitHub account, continue below. If you haven\'t  set up and SSH key, return to
:ref:`github_config`.

.. _fork-and-clone-start:

Fork and Clone Instruction
**************************

#. Navigate to the root level of the repository where the README appears, and
   find the :guilabel:`Fork` button in the upper right.

#. Select the :guilabel:`Fork` button. Then select the GitHub account where
   you want the fork located.

#. Next, navigate to your *forked copy* of upstream
   (not the original). Your forked copy shows your GitHub username, below which "forked from..." appears in the upper left.

   .. note::
      `upstream` is the repository from which you created a `forked` copy.

#. On your forked copy, select green button :guilabel:`Code` and then SSH.

#. Select the :guilabel:`copy icon` next to address starting with `git@..`

#. Open a CLI on your system and navigate to where you want to save this docs
   project.

#. In your CLI, enter this command to clone this documentation project.
   Remember, we use this documentation repository only as an example.
   Note: `[yourusername]` will reflect your GitHub username shown below.

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

#. After you clone, you set up one part of the triangular relationship.

   .. figure:: /_figures/fork-and-clone.png
      :alt: Fork-and-clone

      Fork and clone


#. Run command to view current the "remote" called `origin`.

   .. code-block:: bash

      git remote -v

   .. note::

      When you clone a repository, you receive the remote "origin" for free.
      More on remotes below.

#. Next, add a remote named :file:`upstream`. Again, the source code for this
   documentation repository is used as the example.

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

      origin         git@github.com:[yourusername]/documentation.practices.innersource.git (fetch)
      origin         git@github.com:[yourusername]/documentation.practices.innersource.git (push)
      upstream       git@github.com:intel-innersource/documentation.practices.innersource.git (fetch)
      upstream       git@github.com:intel-innersource/documentation.practices.innersource.git (push)

   .. note::

      For an upstream remote, instead of a "username" after `git@github.com`, the organization name appears: intel-innersource, as shown above.
      It\'s common that the project organization name appears as the upstream remote.

#. Observe: This configuration completes setup of the triangular relationship
   between your local forked copy and upstream, where:

   * `origin` remote has remote-tracking by default. Generally, you create and push new local branches to `origin`, given that by default it is a remote-tracking branch of the original, which you added, as shown above.

   * `upstream` remote represents the collective sum of all individual contributions that have been merged. Generally, while on the local forked copy (e.g., `origin/main`, or default branch), you `pull` from the default upstream branch to synchronize your forked copy with upstream. See also: :ref:`synchronize-forked-copy`.

   Now let\'s illustrate the triangular relationship between remotes.

   .. figure:: /_figures/fork-and-clone-remotes.png
      :alt: Fork-and-clone, relationship of remotes

      Fork-and-clone, relationship of remotes

#. Verify that you can pull changes from the upstream remote.

   .. code-block:: bash

      git pull upstream main


#. Your CLI should show output similar to the following--assuming you just
   forked and cloned.

   .. code-block:: console

      From github.com:intel-innersource/documentation.practices.innersource
      * branch            main       -> FETCH_HEAD
      Already up to date.

#. Navigate to your project root. Run command to show hidden files.

   .. code-block:: bash

      ls -la

  The `.git/` directory appears at the project root.

#. Finally, run command to view configuration of remotes:

   .. code-block:: bash

      cat .git/config


Congratulations! You successfully configured Git to work on the command line, and you successfully added an `upstream` remote.


Next Steps
**********

* :ref:`github_workflows`

.. _InnerSource documentation repository: https://github.com/intel-innersource/documentation.practices.innersource
