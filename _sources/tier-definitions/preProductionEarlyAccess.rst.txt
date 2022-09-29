.. _preProductionEarlyAccess:

Pre Production Early Access
###########################

Reuse and contribution teams can utilize and play with some partially baked features before they are production-ready.

Tier Definitions
****************

.. _tier_preProductionEarlyAccess_start:

* **Tier 5.** No Continuous Integration.
* **Tier 4.** Continuous Integration testing / dev builds.
* **Tier 3.** Continuous Integration triggered with every change coming into the project is validated but not necessarily publicly released. Example: CI production builds.
* **Tier 2.** Continuous Integration completed with internal release and partially baked features. Do you provide features previews in internal releases for testing and feedback before external release?
* **Tier 1.** Continuous Integration and Continuous Devivery with production release and feature flags. Code release ≠ feature release so features do not impact each other, degrade the quality of the release, or block the release. Do you use approaches like Feature toggles or Feature flags to control customer access to experimental features to allow for external testing and feedback before a full release of that feature?

.. _tier_preProductionEarlyAccess_end:

