.. _deploymentInfrastructure:

Deployment Infrastructure
#########################

Reuse or contribution teams need to be able to easily deploy the code in the documented preferred deployment manner.

Prerequisites
*************

Before code can easily be deployed it must have clear  :ref:`buildEnvironmentAndDocumentation`

Tier Definitions
****************

.. _tier_deploymentInfrastructure_start:

* **Tier 5.** Requires specific hardware without emulation / simulation support, i.e. it requires the contributor to have direct access to the hardware locally.
* **Tier 4.** Requires specific hardware but supports emulation / simulation. Contributor has virtual access to the hardware. Example: Using Android Studio or xCode (iOS).
* **Tier 3.** Easily deployed to varying environments as a whole only. Continuous deployment. Example: Cloud device farms where you can test how your application works on various hardware (emulated or real).
* **Tier 2.** Easily deployed to varying environments as a whole, but requires significant effort to deploy piecemeal. Component based builds are easily integrated for deployment. Example: Contribute a change to single oneAPI sub-component and determine ease of deployment.
* **Tier 1.** Can be easily deployed to varying environments as a whole or piecemeal. All components are easily integrated for deployment.

.. _tier_deploymentInfrastructure_end:


