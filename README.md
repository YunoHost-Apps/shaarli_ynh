# Shaarli for YunoHost

[![Integration level](https://dash.yunohost.org/integration/shaarli.svg)](https://dash.yunohost.org/appci/app/shaarli) ![](https://ci-apps.yunohost.org/ci/badges/shaarli.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/shaarli.maintain.svg)  
[![Install Shaarli with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=shaarli)

> *This package allows you to install Shaarli quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
[Shaarli](https://github.com/shaarli/Shaarli) intends to provide YunoHost's users with a simple but advanced bookmarking service.

**Shipped version:** 0.12.0

## Screenshots

![](https://i.imgur.com/zGF4d6L.jpg)

![](https://i.imgur.com/27wYsbC.png)

## Demo

* [Official demo](https://demo.shaarli.org/)

## Configuration

During the installation app will prompt you to install itself as public or private, if you choose public then anyone (not just YunoHost users) would be able to access your Shaarli instance.

After the installation is complete, go to the domain where the Shaarli is installed and create your account. After the creation of the account the registration will be locked.

## Documentation

 * Official documentation: https://shaarli.readthedocs.io/en/master/
 * YunoHost documentation: If specific documentation is needed, feel free to contribute.

## Changelog

For Shaarli changelog, see: https://github.com/shaarli/Shaarli/blob/master/CHANGELOG.md

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/shaarli%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/shaarli/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/shaarli%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/shaarli/)

## Limitations

* Any known limitations.

## Additional information

## Links

 * Report a bug: https://github.com/YunoHost-Apps/shaarli_ynh/issues
 * App website: https://shaarli.readthedocs.io/
 * Upstream app repository: https://github.com/shaarli/Shaarli
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/shaarli_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/shaarli_ynh/tree/testing --debug
or
sudo yunohost app upgrade shaarli -u https://github.com/YunoHost-Apps/shaarli_ynh/tree/testing --debug
```
