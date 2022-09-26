.. _binaryDistributionViaPackageManager:

Binary Distribution Via Package Manager
#######################################

Ease of consumption, risk mitigation, reproducibility.


Tier Definitions
****************

.. _tier_binaryDistributionViaPackageManager_start:

* **Tier 5.** Not distributed via a package manager. Requires manual downloading of a binary from an FTP server. Has clear installation instructions.
* **Tier 4.** Distributed via a package manager. Installation is not tested using a system account prior to distribution.
* **Tier 3.** Distributed via a package manager. Installation is tested using a system account prior to distribution.
* **Tier 2.** Distributed, scheduled installation-tested, and health-check tool. Installation is tested using a system account on a defined schedule. Has an installation health-check tool that is used to test installation using a system account.
* **Tier 1.** Distributed, scheduled installation-tested, health-check tool, pre- and post-deployment tests. Installation is tested using a system account on a defined schedule. Has an installation health-check tool that is used to test installation using a system account. Installation is tested after deployment of a binary.

.. _tier_binaryDistributionViaPackageManager_end:
