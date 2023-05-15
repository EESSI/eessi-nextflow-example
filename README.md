# Using EESSI + `direnv` to ship a workflow execution environment

This repository shows a trivial example of how one can use [the `direnv` tool](https://direnv.net/) together with [EESSI](https://eessi.github.io/docs/)
to ship the complete execution environment for a [Nextflow](https://www.nextflow.io/) pipeline.

Once things are in place, running the code is a matter of entering the repository directory and running:
```
./hello_plus_version.nf
```

## Caveats
* You need to have EESSI and `direnv` available on the system. Soon this will be limited to just haveing EESSI on the system (once EESSI ships `direnv`).
  * The repository uses the `.envrc` file to allow `direnv` to configure the environment (which it gets from EESSI).
* You need to have `direnv` enabled for your shell (e.g., `eval "$(direnv hook bash)"` for `bash`). A helper script to install and configure `direnv` is available
  (but it is pretty invasive so is hidden)
  ```
  source .install_direnv.sh
  ```
* You need to whitelist the repository directory for `direnv`:
  ```
  direnv allow
  ```
