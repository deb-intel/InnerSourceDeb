.. _maintainers:

Maintainers Setup
#################

A clearly defined project governance structure encourages developers to contribute code. It also signifies that a project is well maintained. 

Governance structure could be as simple as one or more maintainers, or could include roles such as committer, owner, maintainer, release manager, etc. Governance processes are descriptions of how the project team deal with project inputs such as bug reports, pull requests, feature requests, etc.

BKMs
****

A common practice in open source projects, in particular those that use Github, is to define owners or maintainers of the code in the CODEOWNERS file in the root directory of the project. Github will automatically request review from the maintainers defined in the CODEOWNERS file. The syntax of the CODEOWNERS file allows owners to be assigned to directories or filetypes or even specific files. For more details on how CODEOWNERS is used in Github see `About code owners`_

In addition it's a good practice to document in human readable form the maintainers and governance processes of the project. This is usually documented in the CONTRIBUTING file (see :doc:`contributing`) or for smaller project the README file (see :doc:`readme_guidelines`).

Tier Definitions
****************

The following levels of readiness have been defined;

.. _tier_maintainers_start:

* **Tier 5.** Less than 2 active maintainers
* **Tier 4.** 2 or more active maintainers
* **Tier 3.** Maintainers documented in the CONTRIBUTING file and a commitment to review and integrate contributions. Active maintainers review pull requests and respond to issues submitted. For example `Kata containers`_
* **Tier 2.** Response time commitment documented in the CONTRIBUTING file. A 7-day response time for pull requests and issues.
* **Tier 1.** Clear governance structure with roles, responsibilities, and bus factor documented in the CONTRIBUTING file. Review process automated with a CODEOWNERS file. 

.. _tier_maintainers_end:


.. _About code owners: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-code-owners
.. _Kata containers: https://github.com/kata-containers/community/blob/main/CONTRIBUTING.md#project-maintainers
