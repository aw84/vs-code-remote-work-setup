# Docker image
Image to run SSH server with configuration from `sshd_config`.

`authorized_keys` are pre-populated with `root_id_rsa.pub`

# Docker compose

To orchiestrate SSH server execution and port, volume configuration

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
* Testing:
```
PYTHONPATH=/code/flask-test/ pytest -vvv tests/
```
* App run:
```
FLASK_ENV=development flask run
```
