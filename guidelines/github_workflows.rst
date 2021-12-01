 .. _github_workflows:

GitHub Workflows
################

This page is divided into two workflows:

* `Developer Workflow`_
* `Tech Writer Workflow`_


Individual Contributions
************************

Open source development often uses a "fork-and-clone" development model, where an upstream repository serves as the one source of truth for several contributors.  While individual contributors work on private branches, they must synchronize them frequently with upstream before submitting a pull request. This ensures that contributors\' pull requests may be easily merged with the upstream without conflicts.

When working on project with two or more contributors, we follow the same model.  Using this model, individual contributors:

* work independently on features or topic branches
* frequently synchronize branches to ensure integration of upstream changes (and eliminate conflicts)
* collaborate on branches, pull requests, and feature development

Staging Contributions
*********************

A staging area is created for a team that wants to make several contributions to an upstream repository as an aggregate.  The organization forks an upstream repository at the "project" level, and the team contributes only to a new fork (or staging area).

Team members contribute to the organization\'s fork. Afterward, a repository maintainer must rebase against upstream and aggregate all changes;
and then push from the organization\'s fork to the original upstream.

A good example of a staging contribution repo is the `Intel Project for LLVM* technology`_.

[TBD] Note: Cannot fork within an organizations. (See 1 Source docs.)

Prerequisites
=============

* :ref:`fork-and-clone-start`

We continue using this `InnerSource documentation repository`_ as an example.
In this repository, :guilabel:`main` is the default branch.

.. note::
   Some repositories use a different default branch, such as :guilabel:`dev`. If in doubt, click the :guilabel:`git branch icon` pull-down menu near the top of the page at the project root. The :guilabel:`default` label appears next to its namesake branc

Ensure that the remotes ``origin`` and ``upstream`` exist at the project root.

.. code-block:: bash

   git remote -v

Immediately after cloning, git puts you on the default branch.

Developer Workflow
******************

This workflow assumes you **frequently** contribute to a repository. It also assumes you are comfortable using a command line interface (CLI) to develop and manage contributions. Instructions are given using a CLI.

* Complete the `Prerequisites`_.

Update forked copy
==================

Follow these steps on any repository that you contribute to regularly.
These steps are basic maintenance tasks that you must follow prior to working on a new branch.

#. Assuming you\'re on the default branch, synchronize your forked copy.

   .. code-block:: bash

      git pull --rebase upstream main

   .. note::
      Optionally, you can run, :command:`git pull upstream master`. We recommend adding the flag :command:`--rebase` because it keeps repository history clean and ensures that any squashed commits on upstream, or rewrites, are also included on your local copy.

#. Now update your forked copy'\s remote called ``origin``.

   .. code-block:: bash

      git push origin main

   Now your forked copy of the project is synchronized with upstream.


Develop a feature branch
========================

In this example, we develop a new feature and keep that feature branch updated with the upstream default branch. We use the `InnerSource documentation repository`_ where ``main`` is the default branch.
See also `Git branch`_ documentation.

#. Ensure you followed steps in the previous section.

#. Create a new branch.

   .. code-block:: bash

      git checkout -b my-new-feature

   where ``my-new-feature`` is the name of your branch.
   where ``-b`` flag allows you to both *create* and *checkout* a branch.

   .. note::

      Generally, keep branch names short and concise while being descriptive enough to explain the content, or nature of the change. For branch naming, follow the instructions in the project :file:`README`, found at the root of the repository. If none exists, contact the repository maintainer or owner. See also this article on `git branch naming conventions`_.

#. In this case, we want to edit these very docs, changing the words of this
   subsection from "Develop a feature branch" to "Develop a topic branch".

#. You make the above edits in your favorite editor.

#. Return to the CLI, where you need to manage version control.

#. While on ``my-new-feature`` branch, update it against upstream ``main``.

   .. code-block:: bash

      git pull --rebase upstream main

   This action ensures that you get the latest updates on upstream ``main`` on your local branch.

#. If conflicts occur, follow this subsection.

   ...

#. If no conflicts occur, continue.

#. Add the revised file, :file:`github_workflow`, to the working tree.

   .. code-block:: bash

      git add github_workflow.rst

#. Enter command and write descriptive commit message.

   .. code-block:: bash

      git commit -s

   where the flag ``-s`` forces a sign-off, based on the email you used to configure your GitHub account.

#. In the commit message editor, write a message that justifies why and how
   you made the change and explains its impact.

   .. note::

      See Chris Beams\'s guidance on `How to write a Git Commit Message`_.
      As Beams suggests, the commit message should answer: "If applied, this commit will..." The answer to that question is your commit message.

#. In the editor, select :kbd:CTRL+O` to save.

#. Then select :kbd:CTRL+X` to exit.

#. Finally, push to your origin (forked copy)

   .. code-block:: bash

      git push origin my-new-feature

#. TBD

Tech Writer Workflow
********************

This workflow assumes you **infrequently** contribute to a repository. It  assumes that you have a GitHub account, know how to access GitHub, and can learn to use the graphical user interface (GUI) to make casual contributions.

* Complete the `Prerequisites`_.

Follow the fork-and-clone instructions. In this workflow, we fork and clone as a backup method only. Going forward, we use the GUI to sync a fork and edit or create documents.

.. warning::
   Unless you understand how to maintain branch on the command line interface (CLI), we recommend not mixing the GUI method described here with CLI methods.


#. Follow `Sync a fork`_ to update your forked copy of the repository.

   .. note::
      Perform this action every time before creating a new pull request.

#. Select the :guilabel:`pencil` icon to edit a document.

   .. figure:: _figures/tech-writer-gui-edit.png
      :scale: 100%
      :alt: GitHub edit icon

      GitHub edit icon

#. Make edits in the GUI.

#. Optional: During editing, select :guilabel:`Preview` to see your edits or
   proposed changes.

   .. note::
      Preview displays GitHub Markdown. If working in reStructuredText, not all directives or features will display correctly.

#. Find :guilabel:`Propose changes` below the edit screen.

   .. figure:: _figures/tech-writer-propose-changes.png
      :scale: 100%
      :alt: GitHub propose changes

      GitHub propose changes

#. Add a descriptive title.

#. In the commit message editor, write a message that justifies why and how
   you made the change and explains its impact.

   .. note::

      See Chris Beams\'s guidance on `How to write a Git Commit Message`_.
      As Beams suggests, the commit message should answer: "If applied, this commit will..." The answer to that question is your commit message.

#. Press :guilabel:`Propose changes`.

#. In :guilabel:`Comparing changes`, select :guilabel:`Create pull request`.
   If desired, revise the commit message now.

   Your pull request now appears in the :guilabel:`Pull requests` tab of the repository. Pull requests are visible to others unless a repository is marked private.

#. Follow these guidelines, depending on how contributions are
   managed in the repository. A README, at the repository root, should include a contribution guide.

   a. Select a :guilabel:`Reviewer`. In some cases, this may not be
      necessary. Repository maintainers are automatically notified of your pull request and will review it.

   #. Select :guilabel:`Labels`, and apply an appropriate one. In some cases,
      this may not be necessary. Repository maintainers are automatically notified of your pull request and will assign an appropriate label.

#. Optional: If desired, in the pull request :guilabel:`Write` tab,
   type :guilabel:`@`, followed by the user\'s GitHub name, to request feedback.

#. Reviewers may request changes in the :guilabel:`Conversations` tab or
   the :guilabel:`Files changed` tab.  In either case, respond to individual comments after you make changes that address Reviewer requests.

   .. note::
      While it\'s not necessary to respond to every individual comment, include at least one. Your response automatically generates a push notification to any GitHub user who participates in the pull request. Find more details in `GitHub push notifications`_.

#. After your pull request is merged, repeat the first step above
   to sync your forked copy.


.. _Sync a fork: https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork

.. _GitHub push notifications: https://docs.github.com/en/account-and-profile/managing-subscriptions-and-notifications-on-github/setting-up-notifications/configuring-notifications

.. _Intel Project for LLVM* technology: https://github.com/intel/llvm
.. _InnerSource documentation repository: https://github.com/intel-innersource/documentation.practices.innersource

.. _git branch naming conventions: https://codingsight.com/git-branching-naming-convention-best-practices/

.. _How to write a Git Commit Message: https://chris.beams.io/posts/git-commit/

.. _Git branch: https://git-scm.com/docs/git-branch