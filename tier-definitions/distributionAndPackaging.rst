.. _distributionAndPackaging:

Distribution And Packaging
##########################

Improving ease of consumption of the components using the package in a particular manner.

Tier Definitions
****************

.. _tier_distributionAndPackaging_start:

* **Tier 5.** Deliver an unpackaged collection of artifacts. Example: zip file with arbitrary names.
* **Tier 4.** Versioned package that is not self-sufficient. Not all dependencies are included in the package, but versioning is in place.
* **Tier 3.** Self-sufficient package that is easily installable and accessible. Package accessible from shared InnerSource location (access granted to all employees who have completed 1Source onboarding) - not applicable to open source.  Self-sufficient package has dependencies included or contains dependency meta-data for a package manager. Example: Can the package be installed without any pre-work by relying only on standard system libraries, component repositories, or otherwise include all required dependencies?
* **Tier 2.** Mainstream web or package server including at least the latest release. 
* **Tier 1.** Mainstream web or package server including latest release older versions with documentation. Checksums in place if applicable. Documentation on how it was configured and built.  Example: Is the documentation sufficient that a new developer could configure and build the exact same package.  Is there a way to confirm the integrity of the package once downloaded? Industry standard package methods.

.. _tier_distributionAndPackaging_end:
