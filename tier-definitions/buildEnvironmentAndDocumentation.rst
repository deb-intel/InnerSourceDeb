.. _buildEnvironmentAndDocumentation:

Build Environment And Documentation
###################################

Reuse or contribution teams need to be able to easily build the code they are working on in their env.

Tier Definitions
****************

.. _tier_buildEnvironmentAndDocumentation_start:

* **Tier 5.** Build instructions are not documented or only partially documented. Non-portable. May be developed for single platform.
* **Tier 4.** Documented build instructions that are not automated. Comprehensive step-by-step build instructions including links for any pre-requisites, containers / VMs, AGS permissions, or other requirements.
* **Tier 3.** One command to set up a project and build a deployable artifact is documented. The command needs to build, install project dependencies, and use standard dependency management solution associated with respective language: JavaScript & package.json, Python & requirements.txt, Go & Go modules, etc. Example: Contributor clones a repo, executed one command to install everything needed to work with the project, and executes one command to build deployable artifact.
* **Tier 2.** Fully automated build scripts are able to be used locally or by Continuous Integration (CI) and is documented. Fully automated build with documentation to replicate it.
* **Tier 1.** Cross-platform command that combines automated build scripts is well-documented. One command to build a deployable deliverable on any supported machine (ie. docker compose, helm, etc.) using mainstream build utilities (cmake, automake, etc.). Developer set up for build environment is fully documented and build scripts are clear.

.. _tier_buildEnvironmentAndDocumentation_end:

Related
*******

In addition to a simple and well documented build environment teams should also aim to enable an easy to use :ref:`dev-env-setup`

Next Steps
**********

Ensure that in addition to being easy to build the project is developing it's :ref:`deploymentInfrastructure`
