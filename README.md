<!-- ABOUT THE PROJECT -->
## About The Project

`secrets-search` is a simple GitHub action wrapper for the phenominal module [detect-secrets](https://github.com/Yelp/detect-secrets) maintained by the Yelp team. This GitHub action is targetted for individuals without a complex use case that want something easy to integrate and deploy.

### Usage

```
---
on:
  push:
    branches:
      - '**'

jobs:
  secret-search-job:
    runs-on: 'ubuntu-latest'
    name: Job to scan for secrets
    steps:
      - name: Checkout
        uses: actions/checkout@v1
      - name: Execute secret-search
        uses: Hacks4Snacks/secret-search@main
```
