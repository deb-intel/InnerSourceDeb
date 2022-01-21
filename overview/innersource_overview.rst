.. _innersource_workflow:

InnerSource Overview
#####################

1Source and InnerSource are **different stages of the same process**. `1Source migration`_ is the first stage in adopting InnerSource. :ref:`Implementing InnerSource <define_innersource>` is the next stage, which consist of many steps in a journey of enabling greater transparency, collaboration, and contributions. These stages serve the same goal.

    *Provide Intel employees a common practices and BKMs, along with a standard software development model, which unifies our greatest efforts and inspires innovation and collaboration.*

InnerSource Process
*******************

.. figure:: /_figures/innersource-adoption.png
   :alt: InnerSource Workflow

InnerSource Goals
*****************

* Increase cross-pollination of development
* Encourage reuse of code (wherever possible)
* Establish metrics and standards
* Provide tools, templates, and guidelines to enhance collaboration

This table describes some key differences between 1Source and InnerSource. We hope this data gives users a broader understanding of how adopting InnerSource helps to achieve these goals.

.. list-table:: 1Source and InnerSource
   :widths: auto
   :header-rows: 1

   * - Feature
     - 1Source
     - InnerSource

   * - Website
     - https://1source.intel.com/docs/index
     - https://intel-innersource.github.io/documentation.practices.innersource/

   * - GitHub Usage
     - Provide *technical guidance* to improve uniform creation of repos/projects and cross-BU discovery (and remove duplication).
     - Provide *functional guidance* to improve repos' and projects' characteristics to encourage cross-pollination and collaboration over time.

   * - GitHub Support Examples
     - `1Source Overview`_
        - GitHub Access with `Onboarding`_
        - GitHub global configuration with `Devtool`_
        - GitHub governance with `Inventory Automation`_
        - GitHub namespace creation
        - GitHub repo migration
     - `InnerSource Overview`_
        - GitHub BKCs for collaboration
        - GitHub BKMs for repo-specific collaboration (fork-and-clone)
        - GitHub BKMs for software development (packaging, testing, etc.)
        - GitHub BKMs for documentation (minimum set)
        - GitHub BKMs for contributions (contribution guides, templates, etc.)

   * - Open Source Principles
     - Supports via administrative actions, automation
     - Supports via functional guidance, templates, and model references (see note below)

   * - Open Source Project Approval
     - `1Source Mindset`_
     - :ref:`open_source_pdt_approval`

   * - Security and Compliance
     - Security and compliance for enterprise-level GitHub usage (2FA, IP allow, Pull Request approvals)
     - Security Development Lifecycle (SDL) for software. Reference to supporting documentation (SDL essentials, SW Composition analysis, BDBA, SNYK)

.. note::

   The InnerSource repo/project “maturity model” analytics track progress and identify specific areas for improvement, driving continuous growth (under development).

.. _1Source Overview: https://1source.intel.com/docs/overview/1source_overview
.. _1Source migration: https://1source.intel.com/docs/migration_guide/quick_guide
.. _InnerSource Overview: https://resources.github.com/whitepapers/introduction-to-innersource/
.. _Onboarding: https://1source.intel.com/docs/getting_started/on_board#create-repo-in-intel-innersource
.. _Devtool: https://1source.intel.com/docs/faq/environment_setup#devtool
.. _Inventory Automation: https://1source.intel.com/docs/overview/1source_overview#inventory-automation
.. _1Source Mindset: https://1source.intel.com/docs/overview/1source_overview#mindset