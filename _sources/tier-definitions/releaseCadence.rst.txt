.. _releaseCadence:

Release Cadence
===============

Frequent releases or predictable release cycles are important to enable both reuse and
contribution. Teams reusing your component in a binary form would be interested in getting the
latest feature or bug fixes and would appreciate daily or weekly releases. If you cannot support
frequent releases then at least the release cycles should be predictable so that consumers would
know when to expect an update. If you open your repository for contribution then contributors
will also be interested in knowing when the feature they've enabled will be released.

Release cadence practices might not apply to source reuse but even in that case consumers might
be interested in reusing a stable version of the code that went through the full QA cycle.
Consuming a version of the source code that is tagged as a stable release would be the safest
option thus they would appreciate either frequent releases or a published release schedule, too.

Here are the InnerSource Readiness expectations:

.. _tier_releaseCadence_start:

* **Tier 5.** Unpublished or no apparent release schedule.
* **Tier 4.** Published and accessible release schedule.
* **Tier 3.** Fixed cadence release schedule where on-demand frequency may vary. Example of fixed cadence: yearly, quarterly, monthly, weekly, or any other recurring schedule.
* **Tier 2.** Pull request review SLA published with commitment for lead time.
* **Tier 1.** Able to cut release or deliver bug-fix outside of regular release schedule within 2 business days. Example: Critical CVE found and fixed.

.. _tier_releaseCadence_end:

Projects in maintenance  mode that do not need frequent releases still qualify for tier 1-3 if
they define release cadence and simply skip releases if there are no changes.

Describe your release cadence in your README and add a reference to the
published release schedule if it applies. See our :ref:`readme_guidelines`

