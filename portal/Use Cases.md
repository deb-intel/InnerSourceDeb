__*Definitions*__

Portal is an application to enable InnerSource practices at Intel.

Product is the Basic UNIT that Intel design, build, license and sell 
Each Product has name, responsible person, is associated with Product metadata, has Product description, Product checklist and Product Grading.
Product has a set of states: Draft - setup is ongoing; Active - setup is completed, available for engagment; Archived - tracked for historical reasons, not available for engagment

Product metadata - set of github braches, bug tracking system, internal documentaion, instructions to obtain access to the sources and bug tracking, contacts, SWLC, SDL, roadmap, test cases, info needed in order to reuse the code and then release, coding guidelines, CI rules, how to build, etc.

Product description - information descripes the product: high-level description of the product domain and tasks to be solved (for example, Crypto, SignalProcessing, DeepLearning, etc.), may be presented with tags, automated natural language processing of docs, word cloud aggregation, etc.

Product checklist - instrument to complete Product self-assesment to get InnerSource grading

Product Grading - a score on the InnerSource readiness scale

Product artifacts - any reusable outcome of the Product (source code, builds, released packages, etc.)

The 3rd party systems - any system that may provide data for automated Product checklist fullfilment (for example, SDLE, GitHub, etc.)

__*Roles*__

Intel BB - any Intel BB emploee 

Portal user - Intel BB authorized for Product management usage via AGS

Portal administrator - user with administrative privelegies on the Portal

Product owner - user who is specified as a Primary contact for the product and has authority to manage this Product 

Portal Automation - backend engine running behind the portal UI

<br/>

__*InnerSource Portal Use Cases*__

__*Setup*__

Setup-1:
- Pre-condition:
  - git branches are migrated to 1Source github
- Flow:
  -  As a Portal user, I register a new Product and provide Product metadata and Product description
- Post-condition:
  - If input is accepted, then I become a Product owner and Product is in Draft state on the Portal, otherwise I get an error. I may get a warning that a Product with similar Product description already exists and probably should be reused.

Setup-2:

- Pre-condition:
  - Product is in Draft state on the Portal
- Flow:
  -  As an Product owner, I complete Product checklist
- Post-condition:
  - Product is Active on the portal, Product has Grading and available for discovery and engagment

__*Manage*__

Manage-1:
- Pre-condition:
  - Product is in Draft state on the Portal
- Flow:
  -  As an Portal user, I change Product and provide updated Product metadata, Product description
- Post-condition:
  - If input is accepted, then Product metadata, Product description are updated, otherwise I get an error. I may get a warning that a Product with similar Product description already exists and probably should be reused.

Manage-2:
- Pre-condition:
  - Product is in Active state on the Portal
- Flow:
  -  As an Portal user, I change Product and provide updated Product metadata, Product description, Product checklist
- Post-condition:
  - If input is accepted, then Product metadata, Product description and Product checklist are updated, Product grading is changed, otherwise I get an error. I may get a warning that a Product with similar Product description already exists and probably should be reused.

Manage-3:
- Pre-condition:
  - Product is in Active state on the Portal
- Flow:
  -  As an Portal automation, I regular update Product checklist based on information from The 3rd party systems
- Post-condition:
  - Product grading is updated

Manage-4:
- Pre-condition:
  - A Portal user submits Product metadata
- Flow:
  -  As a Portal automaiton, I validate submitted Product metadata
- Post-condition:
  - If changes are accepted, Product metadata is updated, Product grading is updated

__*Engage*__

Engage-1:
- Pre-condition:
  - Product is in Active state on the Portal
- Flow:
  -  As an Intel BB, I reuse Product artifacts in my development pipeline according to the found Product metadata on the Portal
- Post-condition:
  - __???Do we need to track dependencies???__

Engage-2:
- Pre-condition:
  - Product is in Active state on the Portal
- Flow:
  -  As an Intel BB, I provide a bugfix to Product artifacts according to the found Product metadata on the Portal
- Post-condition:
  - __???Do we need to track dependencies???__

__*Analyze*__

Analyze-1:
- Pre-condition:
  - Product is in Active state on the Portal
- Flow:
  -  As an Intel BB, I open Portal reports
- Post-condition:
  - Information with best-in-class InnerSource Intel Products is available

  __???Do we need to track dependencies???__
  __???What are other reporting use cases???__
  
 __*Archive*__
 
 Archive-1:
 - Pre-condition:
  - Product is Active on the Portal
- Flow:
  -  As an Product owner, I set a Product on the portal to the Archived state
- Post-condition:
  - Product is not available for discovery and engagment

 __*Administrate*__
 
 Admin-1:
 - Pre-condition:
  - *
- Flow:
  -  As an Portal administrator, I do any action in the system available for the application user
- Post-condition:
  - Correspoding action is executed

Admin-2:
 - Pre-condition:
  - Product has Product checklist and grading
- Flow:
  -  As an Portal administrator, I update Product checklist template version
- Post-condition:
  - Product checklist is correspondently updated, Product grading is recalculated

 __*Notify*__
 
   __???Do we need to notify users???__
 
__*User management*__
  
  __???How user retirment be processed???__
  
