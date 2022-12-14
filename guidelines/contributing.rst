.. _contributing_help:

What is a CONTRIBUTING file?
############################

A CONTRIBUTING file in your Github repo gives potential contributors to your project a guide to the processes and conventions your project uses to accept contribution. Similar to README and FAQ it is convention to capitilize "contributing", structure the file using markdown, and save it in the root directory of your project repo. If your project has already documented Contribution guidelines in another repo or out of tree documentation system then it's still useful to create a small summary that links to the key sections. See for example the `Zephyr Project`_.

Integration in Github
*********************

Creating a CONTRIBUTING file (either as plaintext, Markdown, or Restructure Text) in any of the root directory of your repo, or the docs/ or .github/ folder will allow Github to automatically add a link the guidelines whenever someone creates a Pull Request or opens an Issue.

To learn more about Markdown check out the `Markdown Guide`_ or the
`Cheatsheet`_. ReStructuredText is built upon `Python Docutils`_.

CONTRIBUTING templates, examples, and guides
********************************************

We created a :doc:`CONTRIBUTING template</template_files/CONTRIBUTING>` as a starting point for InnerSource projects to adapt to their project\'s needs.

There are many external open source projects that provide good examples of CONTRIBUTING files

* `Atom Editor`_
* `Angular`_
* `Open Government`_

There are some external guides to creating an effective CONTRIBUTING file:

* `Mozilla ScienceLab Guide`_
* `Embedded Artistry Guide`_
* `GitHub Setting guidelines for repository contributors`_

.. _Zephyr Project: https://github.com/zephyrproject-rtos/zephyr/blob/master/CONTRIBUTING.rst
.. _Markdown Guide: https://www.markdownguide.org/
.. _Cheatsheet: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
.. _Python Docutils: https://docutils.sourceforge.io/rst.html
.. _Atom Editor: https://github.com/atom/atom/blob/master/CONTRIBUTING.md
.. _Angular: https://github.com/angular/angular.js/blob/master/CONTRIBUTING.md
.. _Open Government: https://github.com/opengovernment/opengovernment/blob/master/CONTRIBUTING.md
.. _Mozilla ScienceLab Guide: https://mozillascience.github.io/working-open-workshop/contributing/
.. _Embedded Artistry Guide: https://embeddedartistry.com/blog/2017/12/11/get-others-involved-in-your-project-with-a-contributing-guide/
.. _GitHub Setting guidelines for repository contributors: https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/setting-guidelines-for-repository-contributors
