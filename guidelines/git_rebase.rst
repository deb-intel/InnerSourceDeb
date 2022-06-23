.. _git_rebase:

Git Rebase
###########

This page walks you through how to do an interactive rebase in Git. 


Git Merge vs. Git Rebase
************************

When a `git merge` is run, an extra commit is performed and local copies are overwritten. In contrast, when a `git rebase` is run, 
we attempt to resolve conflicting histories. Given the temporal differences of distributed version control, we shouldn'\t be surprised
when conflicts happen. Rather, we should be ready with a few tools to address them.

Rebase
******

Rebase in Fork and Clone
========================

Oftentimes, our branches get out of sync with upstream. This is especially true with geo-dispersed teams that collaborate.

This instruction walks you through doing a git rebase when you\'ve already set up a fork-and-clone model for development. 
We assume you have two git `remotes`: `upstream` and `origin`, where the default branch is `main`.`

Use Case 1
----------

Let\'s walk through a simple use case. On Monday morning, your manager requested you submit a new PR describing new architecture for your software project. 
You revised an existing document, :file:`bash-script-howto.md`, which describes how to write a bash script that will install Ubuntu dependencies in a Dockerfile. You created a new branch, :command:`bash-script-howto-rev1`, submitted a PR, and requested a review.

Now it\'s' Friday. During the week, a colleague also revised :file:`bash-script-howto.md`. She wrote an introduction to the document, but didn't add more steps.
Her PR was already merged in `upstream`. So now there\'s a conflict. The branch you created on Monday is out-of-sync with `upstream` main. 
You can offer another improvement, but only after you sync your branch with upstream.

You need to merge `upstream` changes into your PR and assure there are no conflicts. What do you do? 

Method 1
--------

#. Checkout main branch. First, always keep your forked copy up-to-date with `upstream/main`

#. Checkout the main branch.

   .. code-block:: bash

      git checkout main

#. Run the routine commands to update your main branch. 

   .. code-block:: bash

      git pull --rebase upstream main 

   .. note::
      Remember, since you cloned your forked copy, you want to update your forked copy.
      Don\'t forget where you pull "from" and "to." It may be helpful to talk through what you do as you do it: 
      "While on my forked main branch, I 'git pull' from 'upstream' to my 'origin' (on my forked copy)".

#. Update your fork. 

   .. code-block:: bash

      git push origin main 

   Now your forked copy is up-to-date.

#. Now return to the branch you created earlier in the week. 

   .. code-block:: bash

      git checkout bash-script-howto-rev2

#. While on this branch, try an update as follows.

   .. code-block:: bash

      git rebase -i main 

   .. note::
      Adding the :command:`-i` flag creates an `interactive` rebase session. 
      Once an interactive session is initiated, follow the `git rebase` prompts. 
      For more information, enter :command:`git rebase --help`.
      
#. After you tried rebasing on the :file:`bash-script-howto-rev2` branch, Git raises a `CONFLICT`.

   .. code-bock:: console 
      ...
      Auto-merging bash-script-howto.md
      CONFLICT (content): Merge conflict in bash-script-howto.md
      error: could not apply ....
      ...

#. Open the file in your favorite editor to show merge conflict. 

   .. figure:: /_figures/merge-conflicts-brackets.png
      :alt: Merge conflict example

      Merge conflict example

#. Carefully review the conflict areas, where `<<<<<<< HEAD` appears.
   Note how the conflict area is bracketed by `<<<<<<< HEAD` at the start, 
   and `>>>>>>>` at the end. You must reconcile the edits inside those brackets
   and then remove these extra characters. Example:

   .. code-bock:: console 
      
      <<<<<<< HEAD
      sudo apt-get -y update
      =======
      apt-get -y update && apt-get -y upgrade
      ```

   .. note::
      Note how the upstream change lies above the `=======` characters, whereas 
      our local change lies below it.

#. In this case, two changes were made in upstream. We want to accept one but modify the other. 
   For the existing commands in Step 3:

   * Keep `sudo`
   * Modify command by adding `sudo apt-get -y update && apt-get upgrade`

#. So, our revised change will look like this:

  .. code-bock:: console 
     
      ```bash
      sudo apt-get -y update && apt-get -y upgrade
      ```

#. Remember to remove characters at the end of the bracketed conflict area.

  .. code-bock:: console 
     
     >>>>>>> ddbc1af... Update changes to bash-script-howto.

#. Save the file in the editor.

#. Add the file in Git. Remember, you\'re still in an interactive rebase session.

   .. code-block:: bash

      git add bash-script-howto.md

#. Next, follow the `git rebase` instructions, so run:

   .. code-block:: bash

      git rebase --continue

#. A new commit message should automatically appear.
   Options: You may do one or any combination of these: 
   * Keep message as is and save
   * Revise message and save
   * Squash commits if there are multiple commits 

#. Save and close the commit message.

#. Next, a message should appear, indicating that you "Successfully rebased..."

  .. code-bock:: console 
     
     [detached HEAD 5c8b670] Update changes to bash-script-howto.
     1 file changed, 8 insertions(+), 1 deletion(-)
     Successfully rebased and updated refs/heads/bash-script-howto-rev2.

  .. note::

     A rebase squash message may appear. If so, leave the first "pick" at the top. 
     Then change each commit line below it to start with "s", shorthand for "squash".

#. Finally, since we re-wrote history with `git rebase`, we need to force push these
   changes to our branch and PR. 
   
   .. note:: 
      When collaborating on branches, it\'s best if you simply post on the PR that you plan
      to force push--for transparency. Ultimately, if others contribute to the same branch,
      a best practice is **to not overwrite others' changes**. Reach out to a repo maintainer(s), 
      who should help you determine if any specific conventions should be followed.
   
   The force push looks like this:

   .. code-block:: bash

      git push --force origin bash-script-howto-rev2

#. Now when we view the PR on Git, it shows "This branch has no conflicts with the base branch."
   
   .. figure:: /_figures/no-conflict-base-branch.png
      :alt: No conflicts with base branch, Git UI

      No conflicts with base branch, Git UI

Now it\'s up to the PR reviewers to determine whether the proposed changes
are acceptable or require more revisions.

.. _Git SCM documentation: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

