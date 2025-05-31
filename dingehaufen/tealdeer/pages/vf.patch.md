- List Environments and the Current State (do they need to be rebuilt?):

`vf ls --details`

- Rebuild the current environment (e.g. after Ubuntu changes pip):

`vf upgrade --rebuild`

- Rebuild a specific environment

`vf upgrade --rebuild {{virtualenv-name}}`
