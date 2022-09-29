.. _git_rebase:

Git Rebase
###########

This page walks you through how to do an interactive rebase in Git. 


Git Merge vs. Git Rebase
************************

Oftentimes, our branches get out of sync with upstream. This is common when collaborating using a :ref:`Fork-and-Clone <github_fork_clone>` method.  

When a `git merge` is run, an extra commit is performed and local copies can be overwritten. In contrast, when a `git rebase` is run, 
we attempt to resolve conflicting histories. 

Using `git rebase -i` helps us iron out conflicting histories and selectively include revisions from our local branch. 


Rebase in Fork and Clone
************************

This instruction walks you through doing a git rebase after you already did a fork-and-clone for development.

We assume you have two git `remotes`: `upstream` and `origin`, where the default branch is `main`.` Your repo may have a different
default branch, like `dev`, so be sure to check at the repo root directory.

Use Case 1
----------

Let\'s walk through a simple use case. It\'s Monday morning. Your manager asked you to submit a new PR to revise an existing document, :file:`bash-script-howto.md`. The document shows how to write a bash script to install Ubuntu dependencies in a Dockerfile. 

You:

* Created a new branch named :file:`bash-script-howto-01`
* Submitted a PR with the branch
* Requested a review

Now it\'s Friday. During the week, your colleague revised :file:`bash-script-howto.md` in her PR. 

Your colleague\'s PR: 

* Added one new line
* Was merged yesterday in `upstream`

Now there\'s a conflict your copy of :file:`bash-script-howto.md` when you push. Your copy of the file is based on the version when you created a new branch.  In summary, the branch you created on Monday is out-of-sync with `upstream` main. 

* You can offer your improvements, but only after you sync your local copy with upstream.
* You must pull `upstream` changes into your PR and assure there are no conflicts. 

How do you do that? 

Method 1
--------

#. Checkout the main (or default) branch.

   .. code-block:: bash

      git checkout main

   Pro Tip: Always run commands (in this steps and next) to keep your forked copy up-to-date with `upstream/main`
   **before** creating new branches.

#. Now sync origin/main with upstream/main. 

   .. code-block:: bash

      git pull --rebase upstream main 

   .. note::
      Remember, since you cloned your forked copy, you want to update your forked copy.
      Don\'t forget where you pull "from" and "to." It may be helpful to talk through what you do: 
      "While on my main branch, I 'git pull' from 'upstream' to my 'origin' (forked copy)".

#. Update your fork. 

   .. code-block:: bash

      git push origin main 

#. Now checkout the branch you created earlier in the week. 

   .. code-block:: bash

      git checkout bash-script-howto-rev2

#. While on this branch, start a rebase.

   .. code-block:: bash

      git rebase -i main 

   .. note::
      Adding the :command:`-i` flag creates an `interactive` rebase session. 
      Once an interactive session is initiated, follow the `git rebase` prompts. 
      For more information, enter :command:`git rebase --help`.
      
#. After you tried rebasing on the :file:`bash-script-howto-01` branch, Git raises a `CONFLICT`.
   No problem. You can handle this.

   .. code-block:: console 
      
      ...
      Auto-merging bash-script-howto.md
      CONFLICT (content): Merge conflict in bash-script-howto.md
      error: could not apply ....
      ...

#. Open the file in your favorite editor to show merge conflict. 

   .. figure:: /_figures/merge-conflicts-brackets.png
      :alt: Merge conflict example

      Merge conflict example

#. Carefully review the conflicts. Note how brackets, `<<<<<<<`, surround the conflict area.

   Can you see where these special characters start and end in the file?:

   * `<<<<<<< HEAD` 
   * `>>>>>>>` 

#. You must reconcile and edit content inside those brackets.  
   
   See an example:

   .. code-block:: console 
      
      <<<<<<< HEAD
      sudo apt-get -y update
      =======
      apt-get -y update && apt-get -y upgrade
      >>>>>>>

   .. note::

      Note how the upstream change is above the `=======` characters but 
      our local change is below the `=======` characters.

#. Two changes were made in upstream. We will accept one but modify the other. 
   As for the existing commands:

   * Keep `sudo`
   * Modify command so it includes `apt-get -y upgrade` too.

#. So, our revised command looks like this:

  .. code-block:: console 
     
      ```bash
      sudo apt-get -y update && apt-get -y upgrade
      ```

#. Remember: Remove special characters and commit message at the end of the bracketed area.

  .. code-block:: console 
     
     >>>>>>> ddbc1af... Update changes to bash-script-howto.

#. Save the file in the editor.

#. Add the file in Git. 

   .. code-block:: bash

      git add bash-script-howto.md

#. If there are mulitple conflicts, repeat the previous step for each file.

#. Next, follow the `git rebase` instructions, so run:

   .. code-block:: bash

      git rebase --continue

#. A new commit message automatically appears. Remember, you\'re still in an interactive rebase session.

   Options: You may do one or more of these: 
   * Keep message as is and save
   * Revise message and save
   * Squash commits if there are multiple commits and save.

#. Save and close the commit message.

#. Next, a message should appear, indicating that you "Successfully rebased..."

   .. code-block:: console 
     
      [detached HEAD 5c8b670] Update changes to bash-script-howto.
      1 file changed, 8 insertions(+), 1 deletion(-)
      Successfully rebased and updated refs/heads/bash-script-howto-rev2.

   .. note::

      A rebase squash message may appear. If so, leave the first "pick" at the top. 
      Then change each commit line below it to start with "s", shorthand for "squash".

#. Finally, since you re-wrote history with `git rebase`, we need to force push these
   changes to our branch and PR. 
   
   .. note::
      When collaborating on branches, it\'s best if you simply post on the PR that you plan
      to force push--for transparency. Ultimately, if others contribute to the same branch,
      you should avoid **not overwrite others' commits**. Reach out to a repo maintainer(s), 
      who should help you determine if any specific conventions should be followed.
      
#. In our example, the force push looks like this:

   .. code-block:: bash

      git push --force origin bash-script-howto-rev2

   Replace `bash-script-howto-rev2` with your topic branch name.

#. Now when we view the PR, Git shows "This branch has no conflicts with the base branch."
   
   .. figure:: /_figures/no-conflict-base-branch.png
      :alt: No conflicts with base branch, Git UI

      No conflicts with base branch, Git UI

Nice job on doing an interactive rebase! 

Now it\'s up to the PR reviewers to determine if the proposed changes can be merged or require more revisions.

.. _Git SCM documentation: https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
