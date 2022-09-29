.. tm_and_b:

Trademark & Branding (TM&B)
###########################

This page offers guidance to trademark and branding resources from an InnerSource perspective. Verify official Intel product names 
in the `Intel Names Database`_.  The InnerSource community of practice does not define or interfere with the corporate Trademark & Branding requirements, for more details visit `Intel Legal`_

.. contents::
  :depth: 2

TM&B readiness
**************

The InnerSource community of practice would like to see the following to ensure InnerSource readiness for reuse and contribution:

Internal projects
=================

* For `internal only` projects:
    * In your your InnerSource `namespace.yml`, we strongly recommend adding the name of your product or project in the `description` tag.
      See an example of `correct product name`_. 

    * Did you follow `Open Source Project and Repo Naming Process`_
      * No - For InnerSource, we recommend you follow this process regardless of whether you will be open source or not and whether you will be externally released or not. For advice on naming, find a contact at `Intel Legal Trademark and Branding`_ .
      * Yes - You will need to follow TM&B guidelines if you change to external release

* If applicable, please document your historic other names in your InnerSource YAML file.

External projects
=================

* External projects or projects that will go external:
  * In your your InnerSource YAML file, document the name of your project as recorded in Trademark & Brand data base (Internal code name and/or external product name)
  * Have you received Trademark & Brand clearance?

      * No – Follow the `legal guidance`_ to do this and include current unapproved name
      * Yes – Record direct link to TM&B DB entry in your InnerSource YAML file

.. _Intel Names Database: https://prod-namesdb.intel.com/
.. _Intel Legal: https://legal.intel.com/
.. _Intel Legal Trademark and Branding: https://legal.intel.com/Trademarks/Pages/contacts.aspx
.. _legal guidance: https://legal.intel.com/Trademarks/Pages/tm%20cpor.aspx
.. _Open Source Project and Repo Naming Process: https://opensource.intel.com/OSSApproval/os-pdt/proj-repo-naming.html
.. _correct product name: https://github.com/intel-innersource/inventory/blob/master/organizations/intel-innersource/repos/libraries/performance/math/onemkl/documentation/namespace.yml
