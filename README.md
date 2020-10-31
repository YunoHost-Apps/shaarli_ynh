# Shaarli for Yunohost

[![Integration level](https://dash.yunohost.org/integration/shaarli.svg)](https://dash.yunohost.org/appci/app/shaarli) ![](https://ci-apps.yunohost.org/ci/badges/shaarli.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/shaarli.maintain.svg)

[![Install Shaarli with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=shaarli)


> *This package allows you to install Shaarli quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
This app intends to provide Yunohost's users with Shaarli (https://github.com/shaarli/shaarli), personal, minimalist, super-fast, database free, bookmarking service.

**Shipped version:** 0.12.0

## Screenshots

![](https://imgur.com/zGF4d6L)

![](https://imgur.com/27wYsbC)

## Demo

* [Official demo](https://demo.shaarli.org/)

## This app claims following features

- [X] Install / remove scripts
- [X] Backup/restore scripts
- [X] Upgrade Script
- [X] Change url
- [X] Integrate fail2ban for the app

## Configuration

During the installation app will prompt you to install itself as public or private, if you choose public then anyone (not just Yunohost users) would be able to access your Shaarli instance.

After the installation is complete, go to the domain where the Shaarli is installed and create your account. After the creation of the account the registration will be locked.

## TODO/Limitations

- [ ] Integrate the LDAP/SSOWAT authentication


## Changelog

For Shaarli changelog, see: https://github.com/shaarli/Shaarli/blob/master/CHANGELOG.md

## Report a bug

https://github.com/YunoHost-Apps/shaarli_ynh/issues

**More info on the documentation page:**
https://yunohost.org/packaging_apps

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/shaarli%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/shaarli/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/shaarli%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/shaarli/)
