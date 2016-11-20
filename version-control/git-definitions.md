# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?: Version control is used to keep various edits and versions of a software project organized, allowing users to work on adding/refining different features simultaneously without interfering in each other's work or accidentally overwriting the working "master" version as they experiment. 



* What is a branch and why would you use one?: A branch is a duplicate copy of a project's original code used as a scratchpad for building new features or otherwise trying out different code. With this scratch pad, users can make edits and test them without worrying about altering the original recipe just yet. Once a feature has been completed and tested out, the user can then use git's merge function to add this change to the original. 


* What is a commit? What makes a good commit message?: A 'commit' is a snapshot of a file taken by the user, a sort of mile-stone used to mark a series of changes in git. The user enters a message with their commit as a summary of the changes made and what they do, e.g. "Fixed typo in title. Changed font color from red to blue."


* What is a merge conflict: When a user attempts to combine two branches, a 'merge conflict' can occur if the two branches have disagreeing commits in the same parts of their code and precedence is unclear. This prevents the merge from occuring without the user ironing out the conflict and deciding which branch's code should be overwritten. 


ADDING A TEST WORD AT THE BOTTOM FOR 1.5 RELEASE 2