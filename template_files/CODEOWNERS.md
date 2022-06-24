CODEOWNERS
==========

## Simplified Source Code Template

    # These owners are notified of all additions or modifications to the repo. 
    # Note that email addresses and/or GitHub @names can be used to identify owners.
    * @member1 @member2 @member3 member17@intel.com


## Documentation Template

    # This file identifies people who are automatically notified when Pull Requests are made for documentation. 
    # The following people are notified and are expected to review the PRs:
      Person 1 (technical review), Member 2 (technical/grammatical/style review), and Person 2 (grammatical/style review).

    * @person1 @member2 @person2


## Detailed Source Code Template

    # Lines starting with '#' are comments.
    # Each line is a file pattern followed by one or more owners.

    # These owners will be the default owners for everything in the repo.
    * @member1 @member2 @member3 @member4

    # Order is important. The last matching pattern has the most precedence.
    # For example, if a pull request only touches javascript files, only these # owners will be requested to review.

    # include files
    src/include/project/drivers/    @member2
    src/include/ipc/**              @project/steering-committee

    # platforms
    src/platform/name1/*         @member5
    src/platform/name2/*         @member6

    # drivers
    src/drivers/intel/driver1    @admin2
    src/drivers/intel/driver2    @member5

    # other libs
    src/math/*              @member7
    src/ipc/*               @member6 @admin3

    # other helpers
    # Mostly overridden by *.(ba)sh below
    scripts/*               @admin2 @member5

    # build system
    **/CMakeLists.txt       @admin1 @member5
    # **/Kconfig
    # scripts/cmake/**
    # scripts/kconfig/**

    *.sh                    @sysadmin7
    *.bash                  @sysadmin7
    *trace.*                @member13

    /.github/               @member1 @admin1 @sysadmin7 @member4


