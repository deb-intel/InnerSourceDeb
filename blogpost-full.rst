.. _blogpost-full:

Why InnerSource at Intel?
#########################

InnerSource Origins
*******************

When Tim O'Reilly coined the phrase "InnerSource" in 2000, a quiet revolution began. At the Open Source Summit two years before, O'Reilly engaged a team of IBM developers interested in adopting open source values to accelerate development (2018). The theory went, by adopting open source principles, companies like IBM could apply open source principles inside their own walls. Regardless of whether code was publicly released.

Such teams could foster "collaboration, community, and low barriers to entry," helping them achieve faster development cycles--promoting peer-reviewed code (O'Reilly). It was the era of Internet 1.0. Distributed development was new. Git, a version control system Linus Torvalds created to support Linux kernel development, wouldn't be born for another five years (2005).     

At that time, the rigid "waterfall model" from the 1960s was forced to contend with the World Wide Web and distributed communities. The "open source" software development model just began to revolutionize the way software was made.

What is InnerSource?
********************

In the book "Adopting InnerSource," the authors state:

    | InnerSource is simply the use of Open Source principles and practices inside proprietary organizations. InnerSource empowers individual engineers to contribute code from within their team to another team in order to speed up the process of adding functionality (features) or fixing defects.

More than 20 years later, InnerSource is more relevant than ever.  

Why InnerSource at Intel?
*************************

Some early adopters of InnerSource, including Microsoft, now rely on this development model. Agile principles, scrum masters, and kanban boards are the new norm. In 2022, Intel made a formal commitment to adopting InnerSource culture. The InnerSource Work Group (WG), led by Project Manager Aaryn Curl, includes members from IT, DevOPs, Release Engineering, and Documentation. 

This post introduces the `InnerSource Portal`_, an aggregator app for GitHub repos and projects. Under Lead Developer Vadim Sarkisov, the Portal app features a platform for sharing and documenting projects and repos. See `Why use the Portal?`_ below.

So what's the first step in adopting InnerSource? Intel teams should add their projects to the `InnerSource Portal`_, start leveraging the work of other teams, review their metrics, and learn how to incorporate InnerSource principles. One step at a time.

The InnerSource Portal
**********************

The InnerSource Portal was created to aggregate and expose repos and projects across Intel, promoting reuse and transparency. 1Source and InnerSource are two stages of one evolution. For more, read our :ref:`innersource_overview`. 

Since early 2022, Intel has a seen a shift toward using "OKRs" to track corporate- and individual-level performance. This "revived" assessment model emphasizes transparency, accountability, and most importantly, measureable and verifiable metrics. Started in September 2021, the InnerSource Portal establishes similar metrics. For similar reasons. We must ask: How can Intel SATG, as a software-centric organization, hold ourselves accountable without first establishing baseline data to measure our ability to collaborate and share code? 

Why use the Portal?
********************

.. figure:: /_figures/maturity-spider-chart-2.png
   :scale: 75%
   :alt: Assessment maturity

   Assessment results on maturity

The Portal Assessment asks you to evaluate key characteristics of your project's innersource readiness, such as whether a "roadmap" is provided, how well "architecture" is defined, if "versioning" is supported, if "releases" are managed, and "ease-of-ramp"--and others. In collaboration with Ramanan Ganesan (IOTG), the InnerSource WG defined these key categories, which are measured by Tier Levels (1-5, where 1 is highest) and Maturity (1-5, where 5 is highest). By discovering a project's Tier Level and Maturity scores, teams can quickly understand how to improve InnerSource practices. Teams also can indicate that they're "accepting contributions." Results of the evaluation criteria are measured over time, as projects evolve.

.. figure:: /_figures/assessment-history.png
   :scale: 75%
   :alt: Assessment history

   Assessment history

The intention is that all repos and projects across Intel should strive for a best-in-class codebase, which is modular, reusable, and extensible. We recognize this process takes time.  In turn, the Portal's Assessment provides a completely free way to establish baseline data, which then can be used to show project evolution over time.

InnerSource Philosophy
**********************

Our philosophy is simple. 

    | Adopt. Adapt. Accelerate.

* When teams **adopt** InnerSource principles, they increase the possibility of reuse; 
  they promote greater transparency and ease of collaboration. 

* When teams **adapt** other teams' tools and code, they don't have to reinvent the wheel. 
  With that time savings, teams can focus on feature development.
  
* When teams complete the above, we **accelerate** code development across Intel. 
  We initate a force multiplier. We increase the possibility of reuse. We encourage cross-pollination and collaboration. 

This causal relationship is dependent on one thing. We need to reach a "critical mass" stage where enough projects are added to the Portal, before we can see optimal results of reuse across Intel.

Conclusion
**********

Our opportunity cost is too great to risk missing the chance to increase collaboration, reuse, and transparency. Which ultimately enriches the products we offer our customers. The more coherent and unified our sofware projects, the more time we can devote to providing our clients with innovative software solutions. Whether these are XPU development frameworks, like `Intel oneAPI Toolkits`_, or growth in `Intel quantum computing`_. These solutions support a "Customer First" approach. This fundamental shift in adopting "innersource" culture maps to other Intel values: *Fearless Innovation*, *Results Driven*, *Integrity*, and *Quality*.

The more projects added to the Portal, the richer our collective data. The richer the data, the greater the possibility for collaboration, contribution, and reuse from teams outside the originating group. Why is this valuable? The answer is twofold. 

First, the Portal app exposes data-rich resources across Intel, encouraging reuse. We want to move toward reuse and automation while avoiding coveted silos of code. Second, by filling out a Portal "Assessment", team members create a baseline of data that reflects current "innersource readiness."  Without this baseline data, projects across Intel have no common way to evaluate our ability to reuse code and track project maturity. 

Please add your project or repo to the `InnerSource Portal`_. Help Intel go InnerSource. 

Author: michael.vincerra@intel.com

References
**********

* Cooper, Danese and Klaas-Jan Stol. "Adopting InnerSource". 2018. O'Reilly Media.  


.. _InnerSource Portal: https://inner-source.intel.com/board/root
.. _Intel oneAPI Toolkits: https://www.intel.com/content/www/us/en/newsroom/news/oneapi-toolkits-xpu-software-development.html
.. _Intel quantum computing: https://circuit.intel.com/content/news/circuitnews/corporate/2020/ww36-quantum.html
