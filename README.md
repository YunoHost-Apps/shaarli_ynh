# Shaarli app for Yunohost (shaarli_ynh)
---

This app intends to provide to Yunohost's users Shaarli (https://github.com/shaarli/Shaarli), a simple but advanced bookmarking service.
![UI](https://framapic.org/ui93xwvieFC5/bdLqopk0JqVv)
It is based on the community version of Shaarli (from @sebsauvage original software).
You can get a demo [here](https://shaarli.readthedocs.io/en/master/#demo).


[![Integration level](https://dash.yunohost.org/integration/shaarli.svg)](https://ci-apps.yunohost.org/jenkins/job/shaarli%20%28Community%29/lastBuild/consoleFull)

[![Install Shaarli with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=shaarli)

Current version: **0.9.7**

This app intends to provide to Yunohost's users Shaarli (https://github.com/shaarli/Shaarli), a simple but advanced bookmarking service.

It is based on the community version of Shaarli (from @sebsauvage original software).

Maintainer: @Lapineige

## Current features

- [X] Install / remove scripts
- [X] Backup/restore scripts
- [X] Upgrade Script
- [X] Change url

## Installation information

During the installation you will be prompted if you want to set this instance as public, which means any people (not just Yunohost users) can consult you Shaarli.

After the installation go to the domain and create your account. After the creation of the account the registration will be locked.

## TODO
    
- [ ] Integrate the LDAP/SSOWAT authentication (currently the authentication is done by Shaarli)
- [ ] Integrate fail2ban for the app

## Changelog

For Shaarli changelog, see: https://github.com/shaarli/Shaarli/blob/master/CHANGELOG.md

## Report a bug

https://github.com/YunoHost-Apps/shaarli_ynh/issues
