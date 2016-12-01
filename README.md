# kube-tools

## Installation

```
source install.sh
```

## Description

Provides sugartastic kubectl tools.
Appends a few aliases to you .bashrc file

```
kubelog <pod name or pattern> [container]             # print logs from container
kubeexec <pod name or pattern> [container] [command]  # execute a command or shell in a container
kubedestroy                                           # basically delete everything your cluster
```
