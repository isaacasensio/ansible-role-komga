komga
=========

Installs [Komga](https://komga.org/) as a docker container.


Role Variables
--------------

Available variables are listed below, along with default values (see defaults/main.yml):

```
komga_image: gotson/komga
```
The version of the komga image to run as a container.

```
komga_host_port: 9001
```
Host exposed port from where to reach Komga.

```
komga_host_config_path: /etc/komga/config
```
Komga config folder path in Host

```
komga_host_data_path: /etc/komga/data
```
Komga data folder path in Host

```
komga_container_user: pi
```
user who will run the container


Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - iasensio.komga

License
-------

MIT

