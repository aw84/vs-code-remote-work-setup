# Docker image
Image to run SSH server with configuration from `sshd_config`.

`authorized_keys` are pre-populated with `root_id_rsa.pub`

# Docker compose

To orchiestrate SSH server execution and port, volume configuration

## Setting up database
Database service must be run withint separate project `-p <project-name>`
```
docker-compose -p my-postgres -f .\db-docker-compose.yml up -d
```
## Starting remote host
```
docker-compose -f .\docker-compose.yml up -d
```

# VS Code Remote SSH
* intall python formatter
## ssh-keygen
Generate key-pair and set correct permission (on Windows)
## ~/.ssh/config (on Windows)
```
Host localhost
  HostName localhost
  User root
  Port 2222
  IdentityFile "c:\dev\remote-vs-code-test\root_id_rsa"
```
# Operations

## SSH keys for GitHub (on SSH host/docker)

Copy GitHub user key-pair to `/code/.ssh/{<git-hub-identity>,<git-hub-identity>.pub}`

Prior to first `git-clone` edit `~/.gitconfig`:
```
[core]
        sshCommand = ssh -i /code/.ssh/id_rsa
[user]
        email = <put_email_here>
        name = <put_name_here>
```
