# jmp-intermediate

This repository is used in order to store all my solutions for home-tasks from ["Java Intermediate Mentoring Program"](https://learn.epam.com/detailsPage?id=74e030c1-e62d-4c0a-86f9-3b8e119a53c3).

**Module 1 - CI/CD + Git Advanced**

Passed additional courses and tests:

- [X] [Jenkins Essential Training](https://learn.epam.com/detailsPage?id=b22370a3-e602-48eb-b951-fc668b67f584)
- [X] ELearn: GIT Advanced, CI/CD

Home Task
 1. - [ ] GIT Advanced (**skipped**)
    1. - [ ]  Pulling commits from the middle of git history. For this task you need your Groovy calculator task. Please clone it to your current branch.
       1. - [ ] Checkout to branch *“task${number}-feature”*.
       1. - [ ] Add these features to your calculator sequentially in different commits:
          1. - [ ] Support large numbers in math operations (use BigInteger instead of Integer/int type)
          1. - [ ] Add Intermediate logging of math operation results. Example of console output for “2+2*(5-7)”: `5-7=-2 \n 2*(-2)=-4 \n 2+(-4)=-2 \n result: -2 `
       1. - [ ] Now let’s imagine that customer wants changes regarding allowing large number (BigInteger support) in nearest patch. Try to pull these changes to the main branch of this task *“task${number}”* using git cherry-pick and git rebase commands.
    1. - [ ] Investigate changes in files in GIT repository by git blame command.
    1. - [ ] Max mark for this part – **2 points**
 2. - [ ] CI/CD using Jenkins Home Work
    1. - [X] Setup Jenkins locally
    1. - [X] For CI/CD you should use project from build tools home work
    1. - [X] Use names for job described in brackets (name: $nameOfJob)
    1. - [ ] Create build job (name: *release*) - **0.5 points**
       1. - [X] Should build when SCM has changes
       1. - [ ] Job should be parameterized with maven or grade (user should be able to choose it in job parameter)
       1. - [ ] Use promotion plugin. Should be available two promo stars
          1. - [ ] First stars should be applied automatically to successful build (QA)
          1. - [ ] Second stars should be applied manually (Prod)
    1. - [ ] Create continuous Job (name: *continuous*) - **0.5 points**
       1. - [ ] Should build every night at 2:00 AM
    1. - [ ] Create Deploy Job (name: deploy) - **0.5 points**
       1. - [ ] Should be parameterized with artifacts prompted with QA star
       1. - [ ] Use Container Deploy plugin
    1. - [ ] Setup machine on cloud.epam.com - **0.5 points**
       1. - [ ] Setup additional user for Jenkins
       1. - [ ] Setup tomcat
       1. - [ ] Setup cloud machine as slave on Jenkins
    1. - [ ] Create deploy job (name: *deploy_cloud*) - **0.5 points**
       1. - [ ] Should deploy on cloud machine
       1. - [ ] Should be parameterized with artifacts promoted with Prod star
       1. - [ ] Use Container Deploy plugin
    1. - [ ] Create PipeLine (*delivery_pipeline*) - **0.5 points**
       1. - [ ] Job should be parameterized with maven or gradle (user should be able to choose it in job parameter)
       1. - [ ] Step Build according to parameter (release)
       1. - [ ] Step Deploy on test (deploy job)
       1. - [ ] Check using curl that deployment is successful (https://curl.haxx.se/download.html) if deployment is successful deploy on cloud (deploy_cloud)
 3. - [ ] **Extra mile: 1 point**
    1. - [ ] Git hooks
       1. - [ ] Specify template of commit message and provide it for developer.
       1. - [ ] Check that build of new version is successful before committing changes.
       1. - [ ] Before pushing change to remote repository – check that there are no uncommitted changes.
    1. - [ ] Copy task folder to brand new repository with saving git history
 4. - [ ] **Extra mile: 1 point**
    1. - [ ] Customize version generation in following way
       1. - [ ] Running Build job should increment minorVersion in GIT after successful build.
       1. - [ ] Use Git tags for each version.
       1. - [ ] Configure job to check if version should be incremented (e.g. changes in source/test code presented after last increment)
    1. - [ ] Send email notification about failed builds/deploys to you and your mentor. Email notification should have a link to this failed Jenkins job

**Module 2 - JVM Internals: Memory Management and Classloading**

...
