# vim: syntax=yaml:ts=2:sw=2:expandtab
base:
  pkgrepo.managed:
    - humanname: Xamarin Mono deb
    - name: deb http://download.mono-project.com/repo/debian wheezy main
    - key_url: http://download.mono-project.com/repo/xamarin.gpg
    - require_in: 
      - pkg: mono-devel

mono-devel:
  pkg.installed

mypkgs:
  pkg.installed:
    - pkgs:
      - vim

git:
  pkg.installed

github.com:
  ssh_known_hosts:
    - present
    - user: root
    - fingerprint: 16:27:ac:a5:76:28:2d:36:63:1b:56:4d:eb:df:a6:48


build-essential:
  pkg.installed

/home/vagrant/build/fsharp:
  file.directory:
    - user: vagrant
    - group: vagrant
    - mode: 755
    - makedirs: True

https://github.com/fsharp/fsharp.git:
  git.latest:
    - rev: fsharp_31
    - target: /home/vagrant/build/fsharp
    - require:
      - pkg: git
      - ssh_known_hosts: github.com
      - file: /home/vagrant/build/fsharp


