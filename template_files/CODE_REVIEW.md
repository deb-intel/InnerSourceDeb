# Code Review

## Architecture
- [ ] Is the code modular? (Also referred to as portable.)
- [ ] How well does new code integrate with existing codebase?
- [ ] Does new code follow existing codebase conventions? 
- [ ] How is architecture impacted if both content and code are in the same repo? 

## Readability
- [ ] Are function names easy to understand sor intuitive?
- [ ] Are variable names easy to understand or intuitive? 
- [ ] Does the code avoid 'name-shadowing'? (Name-shadowing mimics built-in language names for variables or functions.)

## Comments
- [ ] Are comments included, especially where there are dense or convoluted functions? (e.g., regexes, algorithms)
- [ ] Are comments written in clear, understandable English?
- [ ] Do comments explain the reasoning of critical code decisions? 
- [ ] Are there still 'TODO' items in comments? Can these be addressed or removed? 

## Functionality
- [ ] Does the code meet the requirements of the intended use case?
- [ ] Is parallel programming going on that might introduce race conditions or deadlocks?
- [ ] Can you refactor and simplify code that is convoluted or verbose?
- [ ] Is there just enough code, but not too much, to efficiently complete tasks?
- [ ] Does code follow 'Do Not Repeat Yourself' (DRY) principle? Does code avoid repetition?

## Stack
- [ ] - Is the code tuned for latest Intel CPU, GPU, or XPU?
- [ ] - Can code improvements demonstrate benefits, or optimization, of a specific Intel chipset? (e.g., AVX-512)

## Errors & Exceptions
- [ ] What is the approach to error handling in the code?
- [ ] Does exception handling work as designed (or is it managed with tests)? 
- [ ] Are exceptions handled with clear failure scenarios?

## Security
- [ ] Have you identified impacts on security or trust boundaries in code? 
- [ ] Have basic security implications been considered or addressed?

## Automation
- [ ] Are linting tools available? Are they integrated?
- [ ] Do CI/CD solutions support, or extend, increased speed to iterate/develop code?

## Testing
- [ ] Have unit tests, functional tests, or integration tests been developed?
- [ ] Is a test-bench, or test-harness, used? Does it require inclusion of specific hardware or software? 
- [ ] Is there at least 80% test coverage of the codebase? (80% is often used as standard to be ready-for-release.)

## User Interface
- [ ] Is the interface intuitive? If so, enumerate the reasons for or against; then suggest solutions.
- [ ] Is there a balance between functional performance and ease-of-use in the interface?

## User Experience
- [ ] Has the app/cli/service been tested for usability, functionality, and navigation?
- [ ] Has the app/cli/service been tested for performance as it impacts user experience?

## Python
- [ ] Can code be optimized for modern methods? (e.g., replace a for loop with a list/dict comprehension?)
- [ ] Are there any Python modules or third-party dependency conflicts?
- [ ] Can the code improve upon the Intel Distribution for Python?
- [ ] If it's a Python extension, does it advocate for adoption of Intel architecture?

## C/C++
- [ ] Are improvements in code's performance and memory footprint traceable down to the instruction level?
- [ ] Can code be refactored to follow the SYCL standard (if applicable) ?
