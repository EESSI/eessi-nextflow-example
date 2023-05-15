# Using EESSI + `direnv` to ship a worflow execution environment

This repository shows a trivial example of how one can use [the `direnv` tool](https://direnv.net/) together with [EESSI](https://eessi.github.io/docs/)
to ship the complete execution environment for your [Nextflow](https://www.nextflow.io/) pipeline.

It uses the `.envrc` file to allow `direnv` to configure the environment (which it gets from EESSI).
