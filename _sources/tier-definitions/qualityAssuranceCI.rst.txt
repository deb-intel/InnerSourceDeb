.. _qualityAssuranceCI:

Quality Assurance CI
####################

CI in place ensures quality and minimizes risk for reuse and contribution teams. Builds confidence in reusing the code.


Tier Definitions
****************

.. _tier_qualityAssuranceCI_start:

* **Tier 5.** Manual QA done by core teams. No manual quality gates in place. Everything can be tested by core team locally before merging pull requests.
* **Tier 4.** Scripted and documented QA such that contributor executes locally before submitting pull requests. Some manual quality gates in place. Examples: pre-commit and pre-push hooks.
* **Tier 3.** Pull requests trigger Continuous Integration (CI) for build & unit tests. Test results are stored and accessible. Some automated quality gates in place. Test results are available and actionable to contributors.
* **Tier 2.** Pull requests trigger Continuous Integration (CI) for several types of required testing. Mostly automated quality gates in place. Examples of testing types: unit, build, integration tests, user acceptance tests, E2E testing, etc. https://www.browserstack.com/guide/testing-pyramid-for-test-automation
* **Tier 1.** Continuous Integration (CI) & Automated Daily Testing where results are stored in test case management system. Fully automated quality gates in place. Test case management system allows for queries and reporting. Short feedback loops.

.. _tier_qualityAssuranceCI_end:
