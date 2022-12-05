Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

# vars file for roles/install_gitlab
EE_RPM: 				url для RPM пакета gitlab
EE_SH: 					url для DEB пакета gitlab
URL: 					URL экземпляра gitlab
URL_registry: 			URL экземпляра gitlab_registry
URL_registry_port: 		порт gitlab_registry
backup_dir: 			директори для backup

#vars for restore
pach_backup: 			путь до архива с бэкапом
name_backup: 			имя архива бэкапа  без "_gitlab_backup.tar" (1666141377_2022_10_19_15.4.2-ee)
file_backup_secrets		файл с полным путем gitlab-secrets.json
#file_backup: /mnt/backup01/1666080711_2022_10_18_15.4.2-ee_gitlab_backup.tar

Dependencies
------------



Example Playbook
----------------

Востановление из бэкапа(предварительно разпокавать архив в котором лежит файл ключей gitlab-secrets.json и не посредственно архив с бэкапом)

`
docker run --rm -i ansible /bin/bash -c "ansible-playbook -i config/inventory playbook/gitlab_restore.yaml"
`

License
-------



Author Information
------------------

