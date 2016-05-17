# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
<<<<<<< HEAD

```answer```
>*Version control allows you to keep track of changes in your code as you progress and keep it safe. If a mistake is made you are able to retrieve a version that still works. As well, you can compare the two or more versions and possibly see where the problem is more easily.*

* What is a branch and why would you use one?

```answer```
>*A branch is a replica of the master file, that branches off to be worked on and merged later. Making changes on the branch is safer than on the original. As well multiple branches can be worked on simultaneously by multiple people at the same time and can be merged into the master later.*

* What is a commit? What makes a good commit message?

```answer```
>*A commit is basically a save point that you might want to go back to. A clear distinctive description is the best kind of commit message.* 

* What is a merge conflict?

```answer```
>*A merge conflict is when Git can't figure out how to integrate new changes. This can happen when two people make changes in the same file at the same time for instance. A dedicated merge tool can help resolve the conflicts.*
=======
	* Version control allows us to view the entire history of revisions to one or more files, and merge revisions made by different people.
* What is a branch and why would you use one?
	* A branch copies what is in a repo and becomes a working copy that is safe to build and experiment from.
	* Changes are isolated in separate branches. If you decide not to implement a change or new feature, you simply decide not to merge that branch into the master branch.
* What is a commit? What makes a good commit message?
	* A commit is a save point in Git
	* A commit has a unique ID and a message
	* A good commit message is specific to the changes made between that commit and the previous one
* What is a merge conflict?
	* A merge conflict is when two people make changes to the same file and both commit their changes back to master.
	* Git doesn't know which pull request is correct, so users have to solve the conflict themselves.
>>>>>>> 7cf2d8dd3f588354e12c9af80d6b24a6fcc5fb0d
