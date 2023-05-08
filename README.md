# MealDrop

## Setup
1. Cloning the repository:
```
git clone https://github.com/xdbted/MealDrop.git
```
2. Dockerize and run the app (from root directory)
```
make run
```
## Git flow


### Branch Naming Format

Each branch must have the following format: [type]/[number]-[issue-code]-[short-description]

`type` must be one of the following:

* **feature**: A new feature
* **bugfix**: A bug fix
* **hotfix**: Emergency fix
* **refactor**: A code change that neither fixes a bug nor adds a feature
* **docs**: Documentation only changes


Examples:

`feature/101-update-dms-api`

`refactor/111-dms-consumers`

### Commit Message Format
Each commit message consists of a **header**, a **body** and a **footer**.  The header has a special
format that includes a **type**, a **scope** and a **subject**:

```
<type>(<scope>): <subject>
<BLANK LINE>
<body>
<BLANK LINE>
<footer>
```

The **header** is mandatory and the **scope** of the header is optional.

Any line of the commit message cannot be longer 100 characters! This allows the message to be easier
to read in various git tools.

Samples: (even more [samples](https://gist.github.com/stephenparish/9941e89d80e2bc58a153))
```
docs(readme): add "Commit Message Guidelines" section
```
```
imp(logging): add additional log message to facilitate monitoring
```

### Revert
If the commit reverts a previous commit, it should begin with `revert: `, followed by the header of the reverted commit.
In the body it should say: `This reverts commit <hash>.`, where the hash is the SHA of the commit being reverted.

### Type
Must be one of the following:

* **build**: Changes that affect the build system or external dependencies (example scopes: gulp, broccoli, npm)
* **chore**: A code change that external user won't see (eg: change to .gitignore file or .pylintrc file)
* **docs**: Documentation only changes
* **imp**: A general improvement
* **feat**: A new feature
* **fix**: A bug fix
* **perf**: A code change that improves performance
* **refactor**: A code change that neither fixes a bug nor adds a feature
* **style**: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc.)
* **test**: Adding missing tests or correcting existing tests

### Scope
Scope could be anything specifying place of the commit change. For example core, crud, exceptions, services, etc...

### Subject
The subject contains a succinct description of the change:

* use the imperative, present tense: "change" not "changed" nor "changes"
* don't capitalize the first letter
* no dot (.) at the end

### Body (optional)
Just as in the **subject**, use the imperative, present tense: "change" not "changed" nor "changes".
The body should include the motivation for the change and contrast this with previous behavior.

### Footer (optional)
The footer should contain any information about **Breaking Changes** and is also the place to
reference issues that this commit **Closes**.

**Breaking Changes** should start with the word `BREAKING CHANGE:` with a space or two newlines.
The rest of the commit message is then used for this.

### Commit Examples

#### Simple commit example

```
imp(routes): add new /api/v1/dms/documents endpoint
```

#### Merge commit example
```
Merge pull request #11 from feature/KB-101-update-dms-api

Added new endpoints:
- [GET] api/v1/documents
- [GET] api/v1/documents/<id>

Remove endpoints:
- [POST] api/v1/detele-document

BREAKING CHANGE:
    all dms endpoints response will contains knowledge_bank field
```
