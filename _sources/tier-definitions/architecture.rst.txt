.. _architecture:

Architecture
############

More modular the design, the easier it is to contribute (find the part you need to change), the easier to reuse the portion you need. Easier to test, easier for CI, etc.

Tier Definitions
****************

.. _tier_architecture_start:

* **Tier 5.** Monolithic architecture and design. Shows no modularity.
* **Tier 4.** Semi-monolithic architecture and design. Shows progress toward modularity where several modules may be interdependent.
* **Tier 3.** Modular and interdependent architecture. Shows full modularity with clear high-level definition and responsibility of subsystems for all modules. All modules are externally usable without hidden APIs.
* **Tier 2.** Modular and several independent modules. Shows progress toward loosely coupled architecture.
* **Tier 1.** Modular and mostly independent modules. Shows loosely coupled components with clear responsibilities and APIs.

.. _tier_architecture_end:
