.. _code-reviews:

Code Reviews
############

Code reviews are an integral part of software development. This document provides guidance and templates for 
new or junior-level developers. Try our `Instructions`_ below as a starting point.

Checklists
**********

Code review checklists are included for those who wish to organize code reviews or 1:1 sessions.
It\'s expected that you may modify templates or focus only sections relevant to a specific
software solution.

Downloads
=========

* :download:`Code Review checklist</template_files/CODE_REVIEW.md>` 
* :download:`Code Plan checklist</template_files/CODE_PLAN.md>` 

Instructions
============

#. Click on a template above to download a template.

#. Copy and paste a single checkbox or a section of checkboxes.

   a. As a **Comment** in a Pull request GitHub repo.

      .. figure:: /_figures/code_review_template_issue.png
         :alt: Paste code-review checkbox item in PR

         Paste code-review checkbox in PR

   #. As an **Issue** in a GitHub repo.

      .. figure:: /_figures/code_review_template_pr.png
         :alt: Paste code-review checkbox item in Issue

         Paste code-review checkbox in Issue

   .. note::
      In GitHub, select the :guilabel:`Write` tab to comment.
      Select the :guilabel:`Preview` tab to view Markdown.

Process
*******

Following are a few methods on how to start a code review. 

Whereas a `Linear Flow`_ asks you to consider the linear sequence of steps, an `Atomic Flow`_ asks you to
start at a specific event in the code and try to understand the scope of its impact.

Linear Flow
===========

Consider starting with a prompt like one below.

* Where does the code start? (e.g., main function, object instantiation, etc.) 
* Is the execution path for the code clear? 
* How are parameters passed and handled? 
* Can you easily follow the specific order in which parameters/values are passed from one function to another? 
* Are failure scenarios handled gracefully in the code?

Atomic Flow
============

Consider starting with a prompt like one below.

* How do Classes instantiate objects that are needed to process data? Are class attributes properly introspected?
* Which Class instantiation dependencies exist (outside scope of code)?
* How is data processed via system calls, file-handling, or requests (e.g., GET, POST)? Are calls or requests efficient?
* Which other groups (e.g., inside Intel) are involved in contributing to the codebase? 
* What is the scope of the other group's responsibility in the codebase? (e.g., interoperability, drivers, UI/UX, etc.)

Next Steps
**********

* :ref:`github_workflows`
