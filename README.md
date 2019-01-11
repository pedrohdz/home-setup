# home-setup

Using _Ansible_ to setup my systems.


## Tasks

Setup:

```bash
python3 -m venv .virtualenv
source .virtualenv/bin/activate
pip install -U pip
pip install ansible ansible-lint yamllint
cp hosts.yaml-sample hosts.yaml
```

Running:

```bash
ansible-playbook playbook.yaml
# OR
ansible-playbook -l localhost playbook.yaml
# OR
ansible-playbook --ask-become-pass -l localhost playbook.yaml
```

Linting:

```bash
ansible-lint playbook.yaml
yamllint --strict roles/ vars/ .yamllint .ansible-lint hosts.yaml playbook.yaml
```
