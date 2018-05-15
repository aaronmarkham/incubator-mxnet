# Tech Writing for Open Source (with a focus on MXNet)

Welcome. The fact that you are here is your first big step to beginning to contribute to an open source project. Much of what is covered here can be applied to other open source projects, however we're going to focus on MXNet and its family of projects.

## Contents

These are the concepts that will be covered:

1. GitHub
    - Account info
    - Gists
1. How to contribute (finding issues vs reviewing pull requests)
    - GitHub issues and labels
    - Jira
    - Confluence
    - Forum
1. Forking a project
    - Fork vs clone
    - MXNet
    - MXNet Model Server
    - TensorBoard for MXNet (MXBoard)
1. Making a contribution
    - Setting up a project
    - Creating a feature branch
    - Making edits
    - Committing changes
1. Pull requests
    - Pull request reviews
    - Resolving comments and change requests
    - Continuous Integration (CI)
    - Merging and merge conflicts
1. Staging your changes
    - Spinning up a staging server
    - Previewing results

## GitHub

### Account info

**Visit github.com and login.** If you don't have an account yet, create one.

Take a look at your profile. It lists the projects you have now, either personal ones or ones you have forked, as well as projects that you have contributed to. There's even a graph that shows your activity over time.

### Gists

Gists are an area for you to take notes. There are secret gists and public gists. You can also make a secret gist public if you like. Secret gists are a good way to keep track of common commands you have to use or a list of steps you have to follow for particular tasks. Public gists are a good way to share code snippets or directions on how something works (or doesn't work) with other collaborators.

**Create a secret gist now.** Use it to take notes while you go through this material!


## How to contribute (finding issues vs reviewing pull requests)

### GitHub issues

**Go to the MXNet project and view the [issues tab](https://github.com/apache/incubator-mxnet/issues).** This shows the current set of reported problems and feature requests with the project.

Click the **Labels** button to look at categories. These are customized per project, but each project comes with a set of default labels. Because of this you might have to explore to find topics of interest.

Starting with the [doc](https://github.com/apache/incubator-mxnet/labels/Doc) label, you can review the issues related to documentation. Much of the time these are more of "how to" questions, meaning that the person reporting the issue couldn't find how to do something in the docs. It is also just as likely that you, as a writer, won't be able to resolve these issues without support from a subject matter expert. In some cases, though, these are great first issues to try to resolve.

Going back to the labels, [example](https://github.com/apache/incubator-mxnet/labels/Example), [howto](https://github.com/apache/incubator-mxnet/labels/HowTo), and [installation](https://github.com/apache/incubator-mxnet/labels/Installation) are also good docs-related topics. Sometimes going through these, you can find how others are resolving the problems and use this info to update the docs.

Take a look at one of the labels and switch the view to `closed` by clicking on the table column header where it says #x Closed. Here you can review what has been resolved already and potentially glean info you can use for a documentation topic.

### Jira

MXNet uses [Jira](https://issues.apache.org/jira/projects/MXNET/issues/) to track features and updates. As an open source project, it is beneficial to have a shared, public place to track projects and milestones.

Trivial pull requests don't need a Jira ID, but anything major requires one. We'll come back to this later.

### Confluence

The [Confluence wiki](https://cwiki.apache.org/confluence/display/MXNET/MXNet+Home) for information for contributors. Generally, the [mxnet.io website](http://mxnet.incubator.apache.org/versions/master/index.html) is for users of MXNet and the wiki is for contributors.

### Forum

The [forum](https://discuss.mxnet.io/) is the place where users, developers, and contributors congregate to ask and answer questions on how to use MXNet. There can be valuable information here that can be used to better flesh out the documentation. And, of course, if you know the answer to a question, answer it!


### Other Channels

There are some more communication channels worth mentioning.

* [Slack channel for MXNet](https://apache-mxnet.slack.com/)
* [Gitter for MXNet](https://gitter.im/dmlc/mxnet)
* Email list for MXNet developers:
    * subscribe by sending an email to dev-subscribe@mxnet.apache.org with subscribe in the subject line
    * email dev@mxnet.apache.org to reach the list


Now that you have had the grand tour of the various properties and resources, it's time to get busy with a contribution.

## Forking a project

Forking a project is easy. You visit the project page and click the **fork** button.

### Fork vs clone

Another option from forking is cloning. You can see this option below the fork button and it just provides a clone URL for you. Cloning is useful if you just want to build the project, but not contribute. Only committers or admins can contribute from a clone, so most of the time you're going start with a fork, then clone your fork. As the admin of your fork you have the power to contribute directly to it. We're going to clone your fork later, so you will get to see that process in a bit.

**What about collaboration?**

Sometimes you get into a scenario where you're working on a big feature on your fork, and you need a collaborator to review it and even edit it! This can be covered in more detail later, but the short answer is you add them as a collaborator to your fork, then they make pull requests to your fork. You review them as normal (described further later) and merge the changes. These will combine with your pull request that you make to the main project. Your collaborator will show up in the pull request so that you're both getting credit for the contribution even though you're the handling the pull request.

### MXNet

**Fork [MXNet](https://github.com/apache/incubator-mxnet) now.** This will essentially copy all of MXNet for you to make your own changes and will set you up for creating pull requests and otherwise contributing to the project.

### MXNet Model Server

Let's also fork MXNet Model Server (MMS). This is a much more light-weight project, and a useful example.

**Fork [MXNet Model Server](https://github.com/awslabs/mxnet-model-server) now.**

### MXBoard

MXBoard is a great example of open source at work. It is a fork of TensorFlow's TensorBoard that has been adapted to work with MXNet.

**Fork [TensorBoard for MXNet](https://github.com/awslabs/mxboard) now.**

## Making a contribution

Let's try making a test contribution. If you have another person available to learn this process with you, it can help to take note of their GitHub username. Write this in your gist. Then, later, when you're ready for a pull request (PR) review, you can tag them in your PR. You will also need their ID to invite them as a collaborator on your project.

### Setting up a project

If you don't have Atom, install it now.

**Install and open [Atom](https://atom.io/).**

An extremely useful package for Atom is Markdown Preview Plus. Packages are like plugins that provide advanced features. When Atom launches you should see an option to install packages. If not, inside Atom, go to **Preferences** >> **Install**, and search for it from there.

**Search for and install the Markdown Preview Plus package.**

Now you're ready to clone your fork! Open up your terminal. If you don't have git installed, install this command line tool for git: https://git-scm.com/downloads

**Open your git-enabled terminal application.**

Clone your fork. Swap out the {your-github-id} with... your GitHub ID. Before you copy and paste this, consider the next option for customizing the folder name.

```bash
git clone --recursive https://github.com/{your-github-id}/incubator-mxnet
```

**Optional folder name customization:**

Use a final parameter to name the folder that the source code will go into. The default is the name of the repository. I like to use a special name for my fork, so I don't confuse it with a clone of the main repo, or a clone of another collaborator's fork.

Here, I'm using `mxnet-a`. As in A for A-aron.

```bash
git clone --recursive https://github.com/{your-github-id}/incubator-mxnet mxnet-a
```

**Note:**

`--recursive` is not always needed when cloning a repo but due to MXNet's usage of submodules, you need to make sure that you're cloning those as well.

For example, you can now clone your fork of MXNet Model Server. I'm using `mms-a` to denote this is a clone of my fork of MMS.

```bash
git clone https://github.com/{your-github-id}/mxnet-model-server mms-a
```

Notice that you don't need `--recursive` here, but also note that if you do use it, it doesn't hurt. So maybe you can just do a recursive clone all of the time. It's up to you.

### Collaborating with a feature branch

Now that you have cloned a couple of your forks, let's delete them. No one wants a ton of random pull requests hitting the production repo. Swap out `{folder_name}` with the name of you used for your fork. Do this for both.

```bash
rm -rf {folder_name}
```

If you're going through all this effort listening to my directions, then you can feel free to make pull requests on my fork.

**Clone [my fork of MXNet](https://github.com/aaronmarkham/incubator-mxnet/).**

Go to the "Clone or Download" button, click it, and then click the copy icon. Then paste it into a `git clone --recursive ` command as follows:

```bash
git clone --recursive https://github.com/aaronmarkham/incubator-mxnet/ mxnet-aaron
```

You would use this pattern when collaborating with one another, so you can contribute to your colleague's fork. Now you have a folder called `mxnet-aaron` that has my fork of MXNet.


### Making edits

**Within Atom, make a Project Folder.** Go to **File** >> **Add Project Folder**. Then browse to the folder that has my fork. You will then see the files available for editing.

**Create a branch.** You always want to create a feature branch.

```bash
git checkout -b test_branch
```

**Browse to the README.md file in the root, open the file, make a change, and save it.**

### Committing changes

Switch to your terminal application and change directories to my fork.

```bash
cd mxnet-aaron
```

Check git's status.

```bash
git status
```

You will see that README.md is red and indicates that it is modified. I prefer to use `git add -u` as it will add any modified files (or deleted files), but not any untracked files.

```bash
git add -u
```

Now check git's status again.

```bash
git status
```

You will see that the README file is now green and indicates that it is staged for committing. Commit it next with a helpful, succinct message about your change.

```bash
git commit -m 'added installation step'
```

Now you are ready to push your changes.

```bash
git push
```

**Error?** What happens if you're not allowed? You would get an error if you tried to push changes to the main MXNet repo too. This happens if you cloned someones repo, and didn't fork. You can't fork a fork either. So, what you have to do is be a collaborator. Now, there are limits on the number of collaborators GitHub will allow in a day per project, so you might need to become a collaborator on another colleague's fork. Once you have access you can run `git pull` again.


## Pull requests

Now that you have made changes to your fork, you can submit a Pull Request.

**Go to the fork on github.com.** You should see a prompt to create a pull request. Do this and evaluate the changes. It will list the file being updated and give you an A/B comparison. Assuming it is what you expected to see, and not a lot of unrelated changes, click the option to create the PR.

### Adding comments and requesting reviews

Pick the username of a collaborator and add them as a comment. Usually `@aaronmarkham` or something similar is enough. This will show up as an alert for them. If you're a collaborator already, then you can use the Review option. This is on the upper right and you can add the username of someone there to ask them for a review.

Now, when you visit github.com, click the top level Pull Requests button. This shows you what's active for you. It also shows you what issues you might have been mentioned in and if you have any review requests.

### Pull request reviews

Anyone can do a review. You don't have to have been requested to do a review. Just go to the PR, find a line of code that was updated (on the green side), and click the + button for that line. Once you make a comment, you are prompted to leave a single comment or to start a review.

**Start a review.** As you go through the changes, make several comments, then finalize the review. You can also add overarching comments at this step. The person that made the PR will be notified.

### Resolving comments and change requests

When you receive a notification that someone has left a review or comment, go to the PR and see what's there. When you are asked to make changes you go back to your text editor, Atom.

**But first, switch to your terminal, and make sure what branch you're on.** You can do this with `git status`.

Then, look in Atom in the lower right corner, and you will see the same branch name.

Making updates follows the same process, and when you push to the fork's branch (aka `origin`), your PR will automatically be updated.

### Continuous Integration (CI)

Take a look at [Jenkins](http://jenkins.mxnet-ci.amazon-ml.com/). This system gets triggered every time you submit a PR, or make a commit to your PR. It will test if your code breaks the build or not. When a committer (someone who is an admin on the repo) looks at your PR, they're going to look at this status first. If it doesn't pass, they won't even review your changes (most likely). Then, depending on how long the review takes, your PR might fail on a later day, so you have to keep an eye on this.

If your PR fails at some point, you will need to fix it. Sometimes just adding a blank line to trigger CI again is all you need.

### Merging and merge conflicts

Probably not enough time for this...

## Staging your changes

Sometimes your changes are so significant that you need to stage a copy of the output somewhere. For MXNet, the website and the API docs are entangled, so you need to generate the whole thing.

### Spinning up a staging server

Basically, follow [these instructions](https://docs.aws.amazon.com/dlami/latest/devguide/gs.html) to spin up an Ubuntu DLAMI.


### Previewing results

Then you need to build and deploy the docs. Instructions for this are in the [MXNet docs](https://github.com/apache/incubator-mxnet/tree/master/docs/build_version_doc#manual-generation).

One update to this doc is that for the full DLAMI, you need to run the following before you run the dependencies script:

```bash
/home/ubuntu/anaconda3/bin/pip uninstall sphinx
pip uninstall sphinx
```

Then you run the dependencies script found in `/{mxnet_root}/docs/build_version_doc` where `{mxnet_root}` is the folder where you cloned your fork:

```bash
./setup_docs_ubuntu.sh
```

To make a simple docs build of your current branch, you then follow [these instructions](https://github.com/apache/incubator-mxnet/tree/master/docs/build_version_doc#build-docs-for-your-current-branch).

Serving the result with Apache are also discussed in those docs.
