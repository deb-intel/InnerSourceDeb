.. _SDLC:

Security Development Lifecycle
############################

The InnerSource community of practice does not define or interfere with the corporate Security Development Lifecycle requirements.
- `SDL Sharepoint <http://goto.intel.com/sdl>`_
- `SDL Essentials portal <http://goto.intel.com/sdle>`_
- `SDL Wiki <http://goto.intel.com/sdle-wiki>`_

The InnerSource community of practice recommends the following to ensure InnerSource readiness for reuse and contribution:

- SDL Essentials

  - Complete requirements and obtain SDL approval for your current release.

  - Document your project according to InnerSource BKMs.

  - Record the location of your SDL project and how to access it in your InnerSource YAML file,.

  - Document your Export Compliance Classifcation Number (ECCN) in your SDL project.

- SW Composition analysis (ex: BDBA and SNYK)

  - Include a language-specific manifest file (requirements.txt) in your GitHub repo (TODO: link from Ryan).

  - Include SW Composition analysis (ex: BDBA and SNYK) exceptions file in your GitHub repo (TODO: link from Ryan).

  - Ensure your project is set up for continuous scanning at least once a quarter (TODO: link to ongoing support definition by EOQ3'21 from Diana).

For teams reusing code:

- SDLE Task CT47: Assessing the risk of the reused components.

  - Assess threat model of reused project

    - How to get access if the BU is no longer in existence: File a support ticket to get access (link from portal to ticketing system under help)

  - Assess the risk of the reused project

    - Read reused project documentation.

- If you are not modifying the code

  - Static code analysis not required.  Reference original static code analysis.

  - SW Composition analysis (ex: BDBA and SNYK) required.

- If you are modifying the code

  - Static code analysis required.

    - The expectation is that they are reviewing the scan for the parts of the code they changed and not the whole of the code.

    - TODO: Link to BKM on how to do this effectively within the tool (Ryan)
