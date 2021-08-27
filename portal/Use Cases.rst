.. contents::
   :depth: 3
..


Priorities
==========

1. Portal to find and reuse project, grading visualization

2. Portal for project re-use information, metrics and reports, top
   contributors, etc.

**Definitions**
===============

**Portal** is an application to enable InnerSource practices at Intel.

**Product** is the Basic UNIT that Intel design, build, license and sell
Each Product has name, responsible person, is associated with Product
metadata, has Product description, Product checklist and Product
Grading. Product has a set of states: Draft - setup is ongoing; Active -
setup is completed, available for engagement; Archived - tracked for
historical reasons, not available for engagement

**Product description** - information descries the product like
high-level description of the product domain and tasks to be solved (for
example, Crypto, SignalProcessing, DeepLearning, etc.), presented with
tags (words), is used for product classification and future discovery.

**Product metadata** -

+---------------------------------------------+------------------------+
| Metadata                                    | Where is stored        |
+=============================================+========================+
| source code                                 | gitHub                 |
+---------------------------------------------+------------------------+
| source code metrics                         | gitHub                 |
+---------------------------------------------+------------------------+
| open bugs and requirements                  | Jira or Rally or       |
|                                             | gitHub issues          |
|                                             | (eventually 1DB)       |
+---------------------------------------------+------------------------+
| bugs tracking guidelines                    | project gitHub?        |
+---------------------------------------------+------------------------+
| instructions to engage                      | project gitHub?        |
+---------------------------------------------+------------------------+
| contacts                                    | project gitHub?        |
+---------------------------------------------+------------------------+
| SWLC                                        | Protex & Record Center |
+---------------------------------------------+------------------------+
| SDL                                         | SDLE                   |
+---------------------------------------------+------------------------+
| roadmap                                     | project sharepoint or  |
|                                             | project gitHub, etc?   |
+---------------------------------------------+------------------------+
| test cases                                  | project link to test   |
|                                             | case locations         |
+---------------------------------------------+------------------------+
| coding guidelines                           | project gitHub?        |
+---------------------------------------------+------------------------+
| CI description                              | ?                      |
+---------------------------------------------+------------------------+
| build instructions                          | project CI scripts or  |
|                                             | project gitHub md      |
|                                             | file?                  |
+---------------------------------------------+------------------------+
| TM&B                                        | link to TM&B DB        |
+---------------------------------------------+------------------------+
| Public Distribution                         | links to intel.com or  |
|                                             | public gitHub          |
+---------------------------------------------+------------------------+
| internal project documentation              | internal               |
+---------------------------------------------+------------------------+
| external project documentation              | external               |
+---------------------------------------------+------------------------+
| export classification                       | link to SDLE           |
|                                             | autoclassification or  |
|                                             | text box where they    |
|                                             | declare their          |
|                                             | classification         |
|                                             | approved via email     |
+---------------------------------------------+------------------------+

**Product checklist** - instrument to complete Product self-assessment
to get InnerSource grading

**Product Grading** - a score on the InnerSource readiness scale

**Product artifacts** - any reusable outcome of the Product (source
code, builds, released packages, etc.)

**The 3rd party systems** - any system that may provide data for
automated Product checklist fulfillment (for example, SDLE, GitHub,
etc.)

**Roles**
=========

**Intel BB** - any Intel BB employee

**Portal user** - Intel BB authorized for Product management usage via
AGS

**Portal administrator** - user with administrative privilege on the
Portal

**Product owner** - user who is specified as a Primary contact for the
product and has authority to manage this Product

**Portal Automation** - backend engine running behind the portal UI

**InnerSource Portal Use Cases** (P1)
=====================================

**Setup**
---------

Setup-1: - Pre-condition: - git branches are migrated to 1Source github
- Flow: - As a Portal user, I register a new Product and provide Product
metadata and Product description - Post-condition: - If input is
accepted, then I become a Product owner and Product is in Draft state on
the Portal, otherwise I get an error. I may get a warning that a Product
with similar Product description already exists and probably should be
reused.

Setup-2:

-  Pre-condition:

   -  Product is in Draft state on the Portal

-  Flow:

   -  As an Product owner, I complete Product checklist

-  Post-condition:

   -  Product is Active on the portal, Product has Grading and available
      for discovery and engagement

**Manage**
----------

Manage-1: - Pre-condition: - Product is in Draft state on the Portal -
Flow: - As an Portal user, I change Product and provide updated Product
metadata, Product description - Post-condition: - If input is accepted,
then Product metadata, Product description are updated, otherwise I get
an error. I may get a warning that a Product with similar Product
description already exists and probably should be reused.

Manage-2: - Pre-condition: - Product is in Active state on the Portal -
Flow: - As an Portal user, I change Product and provide updated Product
metadata, Product description, Product checklist - Post-condition: - If
input is accepted, then Product metadata, Product description and
Product checklist are updated, Product grading is changed, otherwise I
get an error. I may get a warning that a Product with similar Product
description already exists and probably should be reused.

Manage-3: - Pre-condition: - Product is in Active state on the Portal -
Flow: - As an Portal automation, I regular update Product checklist
based on information from The 3rd party systems - Post-condition: -
Product grading is updated

Manage-4: - Pre-condition: - A Portal user submits Product metadata -
Flow: - As a Portal automation, I validate submitted Product metadata -
Post-condition: - If changes are accepted, Product metadata is updated,
Product grading is updated

**Engage**
----------

Engage-1: - Pre-condition: - Product is in Active state on the Portal -
Flow: - As an Intel BB, I reuse Product artifacts in my development
pipeline according to the found Product metadata on the Portal -
Post-condition: - Product is in Active state on the Portal

Engage-2: - Pre-condition: - Product is in Active state on the Portal -
Flow: - As an Intel BB, I provide a bugfix to Product artifacts
according to the found Product metadata on the Portal - Post-condition:
- Product is in Active state on the Portal

**Archive**
-----------

Archive-1: - Pre-condition: - Product is Active on the Portal - Flow: -
As an Product owner, I set a Product on the portal to the Archived state
- Post-condition: - Product is not available for discovery and
engagement

**Administrate**
----------------

Admin-1: - Pre-condition: - \* - Flow: - As an Portal administrator, I
do any action in the system available for the application user -
Post-condition: - Corresponding action is executed

Admin-2: - Pre-condition: - Product has Product checklist and grading -
Flow: - As an Portal administrator, I update Product checklist template
version - Post-condition: - Product checklist is correspondently
updated, Product grading is recalculated

**InnerSource Portal Use Cases** (P2)
=====================================

**Analyze**
-----------

Analyze-1:

-  Pre-condition:

   -  Product is in Active state on the Portal

-  Flow:

   -  As an Intel BB, I open Portal reports

-  Post-condition:

   -  Information with best-in-class InnerSource Intel Products is
      available

   **???Do we need to track dependencies???** **???What are other
   reporting use cases???**

--------------

**Notify**
----------

TBD -**???Do we need to notify users???**

**User management**
-------------------

TBD -**???How user retirement be processed???**

Q&A
===

--------------

Do we need to track any dependencies between projects/people like who
contributed to what project, what was reused, etc. ?

-  Project BOM is critical (should include internal and external
   components & licenses)
-  We have to know what’s being reused
-  Portal: We need to link to where the BOM is stored (Ex: Protex, SPDX,
   oneBOM eventually, etc.). One record of truth for the BOM.
-  Gamification and leader board - Lower priority, future feature.

   -  People: Someone contributed to 10 projects vs. 100 projects.
   -  Project: How many people contributed? How many times reused?

What use cases to retrieve data from the system we see? Reporting use
cases?

-  Reporting use for metrics (for management, for targeting projects
   that need help, etc.)

Do we need notifications?

-  Yes, but not in early release. Need to have later.

How user retirement (for example, a person responsible for the product)
to be processed?

-  TBD
-  Keep the history for quite a while
-  Is there alert manager when a user leaves Intel to ensure new name is
   put in place?
