# Shaarli app for Yunohost
---

This app intends to provide Yunohost's users with Shaarli (https://github.com/shaarli/Shaarli), a simple but advanced bookmarking service.

[![Integration level](https://dash.yunohost.org/integration/shaarli.svg)](https://dash.yunohost.org/appci/app/shaarli)  
[![Install REPLACEBYYOURAPP with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=shaarli)

![UI](https://framapic.org/ui93xwvieFC5/bdLqopk0JqVv)
It is based on the community version of Shaarli (from @sebsauvage original software).
You can get a demo [here](https://shaarli.readthedocs.io/en/master/#demo).


Current version: **0.10.3**

Maintainer: @Lapineige

## This app claims following features

- [X] Install / remove scripts
- [X] Backup/restore scripts
- [X] Upgrade Script
- [X] Change url
- [X] Integrate fail2ban for the app

## Installation information

During the installation app will prompt you to install itself as public or private, if you choose public then anyone (not just Yunohost users) would be able to access your Shaarli instance.

After the installation is complete, go to the domain where the Shaarli is installed and create your account. After the creation of the account the registration will be locked.

## TODO/Limitations
    
- [ ] Integrate the LDAP/SSOWAT authentication (currently the authentication is done by Shaarli)


## Changelog

For Shaarli changelog, see: https://github.com/shaarli/Shaarli/blob/master/CHANGELOG.md

## Report a bug

https://github.com/YunoHost-Apps/shaarli_ynh/issues

#### Supported architectures

* x86-64b - [![Build Status](https://ci-apps.yunohost.org/ci/logs/shaarli%20%28Community%29.svg)](https://ci-apps.yunohost.org/ci/apps/shaarli/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/shaarli%20%28Community%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/shaarli/)
* Jessie x86-64b - [![Build Status](https://ci-stretch.nohost.me/ci/logs/shaarli%20%28Community%29.svg)](https://ci-stretch.nohost.me/ci/apps/shaarli/)

