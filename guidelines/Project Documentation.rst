.. _filename:

Project Documentation
#####################

Project documentation in software engineering is the umbrella term that encompasses written
documents and other materials that cover usage guidelines, software design, API reference,
development process, etc.

Project documentation is critical for InnerSource as it enables a self-service process for new
contributors and consumers. They can find the answers to the most common questions on their own.
Without good project documentation, maintainers become a bottleneck in bringing new contributors
and consumers up to speed, and it becomes hard to scale development and get full advantage of
the InnerSource practices.


Prerequisites
*************

There are no prerequisites to start project documentation. The best practice is to seed the
project documentation with a README file as soon as the source code repository is created and
then evolve the documentation as the software product and processes mature.


Process
*******

Documentation should be treated as code:

* Have internal policies or rules to be followed

* Be placed under source control

* Have clear ownership responsible for maintaining the docs

* Undergo reviews for changes (and change with the code it documents)

* Have issues tracked, as bugs are tracked in code

* Be periodically evaluated (tested, in some respect)

* If possible, be measured for aspects such as accuracy, freshness, etc. (tools have still not caught up here)


BKMs
****

* README and CONTRIBUTING files in the root of a source code repository should be the entry for
  project documentation. This ensures documentation discoverability and enables a self-service
  model for potential contributors and consumers.

* Manage project documentation in GitHub (not a Wiki). It provides familiar tools to manage documentation
  as code - versioning, pull requests, reviews, issues, CI/CD, etc.

* Consider filing Requests for Comments (RFC) documents whenever you need to make a design
  decision or choose between multiple options. When managed as code, RFC documents will be a
  good place to collaborate via pull requests, comments, etc. Additionally, the history of those
  discussions will be kept in GitHub for future reference.


Tier Definitions
****************
.. _tier_project_docs_start:

* Tier 5: Auto-generated API documentation. Interfaces only, not comments on usage.

  E.g.: Using Javadoc, Doxygen, Swagger, or similar API documentation system.

  Exception: Docs are manually updated, but an automated check verifies API coverage.


* Tier 4: At least 50% applicable API coverage.

  E.g.: Public API for Binary Reuse, Public + Internal API for Source Reuse & Contribution.
  
* Tier 3:	Quickstart and tutorials for key features / use cases. Searchable and viewable in a
  standard way. 60% applicable API coverage.
  
* Tier 2:	At least 75% applicable API coverage.

* Tier 1:	Extensive tutorials requiring little to no setup. Examples for various use cases. API
  documentation with examples of usage and explanation. 100% applicable API documentation.
  
  .. _tier_project_docs_end:
