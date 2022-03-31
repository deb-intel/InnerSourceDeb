Versioning
##########

Using a versioning scheme allows potential contributors and consumers of your project to understand the scope and impact of releases. Managing depencies of a project is difficult especially as depencies evolve their API, fix bugs and CVEs, etc. Using a clearly defined versioning scheme should help comsumers of your project understand if a given release fixed bugs, breaks compatibility, or adds new functionality. This will allow informed decisions about which versions to consume as their own projects develop and mature. In addition, build sripts, CI/CD, etc can automate update of dependencies based on clearly defined and consistently applied versioning schcemes.


Prerequisites
*************

The project repository and workflow needs to be setup to support a release process, typically using branches to separate releases from ongoing development.

BKMS
****

* Use git tagging to tag releases in your repository (TBD link to doc describing tagging)

Tier Definitions
****************

The following levels of readiness have been defined;

.. _tier_versioning_start:

* **Tier 5.** No versioning; ie the codebase is presented as is, without any explicit versioned releases.
* **Tier 4.** The project uses manual versioning, ie releases are created but release names / numbers are assigned by the project owner without reference to a versioning scheme.
* **Tier 3.** The project has versioned releases using a well defined versioning scheme.
* **Tier 1.** The project uses `Semantic Versioning`_

.. _tier_versioning_end:

.. _Semantic Versioning: https://semver.org/

