<!--
N.B.: This README was automatically generated by https://github.com/YunoHost/apps/tree/master/tools/readme_generator
It shall NOT be edited by hand.
-->

# Shaarli for YunoHost

[![Integration level](https://dash.yunohost.org/integration/shaarli.svg)](https://dash.yunohost.org/appci/app/shaarli) ![Working status](https://ci-apps.yunohost.org/ci/badges/shaarli.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/shaarli.maintain.svg)

[![Install Shaarli with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=shaarli)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Shaarli quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

Shaarli is a minimalist bookmark manager and link sharing service that you can install on your own server. It is designed to be personal (single-user), fast and handy.

### Features

- share, comment and save interesting links
- bookmark useful/frequent links and share them between computers
- a minimal blog/microblog/writing platform
- a read-it-later/todo list
- a notepad to draft and save articles/posts/ideas
- a knowledge base to keep notes, documentation and code snippets
- a shared clipboard/notepad/pastebin between computers
- playlist manager for online media
- feed other blogs, aggregators, social networks...


**Shipped version:** v0.13.0~ynh1

**Demo:** https://demo.shaarli.org/

## Screenshots

![Screenshot of Shaarli](./doc/screenshots/27wYsbC.png)

## Documentation and resources

* Official admin documentation: <https://shaarli.readthedocs.io/en/master/>
* Upstream app code repository: <https://github.com/shaarli/Shaarli>
* YunoHost Store: <https://apps.yunohost.org/app/shaarli>
* Report a bug: <https://github.com/YunoHost-Apps/shaarli_ynh/issues>

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/shaarli_ynh/tree/testing).

To try the testing branch, please proceed like that.

``` bash
sudo yunohost app install https://github.com/YunoHost-Apps/shaarli_ynh/tree/testing --debug
or
sudo yunohost app upgrade shaarli -u https://github.com/YunoHost-Apps/shaarli_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>