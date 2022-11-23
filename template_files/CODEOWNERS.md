CODEOWNERS
==========

For additional information regarding creating CODEOWNERS files, refer to [Add CODEOWNERS](git_bkms/CODEOWNERS.md).

In the following examples, remove the sample owner names and add your own.

## Simplified Source Code Template: Email addresses

    # These owners are notified of all additions or modifications to the repo. 
   
    * member1@intel.com member12@intel.com admin4@intel.com

## Simplified Source Code Template: GitHub @names

    # These owners are notified of all additions or modifications to the repo. 
    
    * @member1 @member12 @admin4

## Documentation Template

    # This file identifies people who are automatically notified when Pull Requests are made for documentation. They are expected to review the PRs.
      

    * @technicalreviewer1 @techgrammarstyle2 @grammaticalreviewer5

## Detailed Source Code Template

This example shows how you can add owners to different files based on topics. 
Delete the entries you might not need (such as # other libs) and add your own.
Modify the sample file paths.

    # Lines starting with '#' are comments.
    # Each line is a file pattern followed by one or more owners.

    # These owners will be the default owners for everything in the repo.
    * @member1 @member2 @member3 @member4

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

## Reference

[Add CODEOWNERS](git_bkms/CODEOWNERS.md)