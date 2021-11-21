# Shaarli pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/shaarli.svg)](https://dash.yunohost.org/appci/app/shaarli) ![](https://ci-apps.yunohost.org/ci/badges/shaarli.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/shaarli.maintain.svg)  
[![Installer Shaarli avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=shaarli)

*[Read this readme in english.](./README.md)*
*[Lire ce readme en français.](./README_fr.md)*

> *Ce package vous permet d'installer Shaarli rapidement et simplement sur un serveur YunoHost.
Si vous n'avez pas YunoHost, regardez [ici](https://yunohost.org/#/install) pour savoir comment l'installer et en profiter.*

## Vue d'ensemble

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


**Version incluse :** 0.12.1~ynh2

**Démo :** https://demo.shaarli.org/

## Captures d'écran

![](./doc/screenshots/27wYsbC.png)

## Avertissements / informations importantes

## Configuration

During the installation app will prompt you to install itself as public or private, if you choose public then anyone (not just YunoHost users) would be able to access your Shaarli instance.

After the installation is complete, go to the domain where the Shaarli is installed and create your account. After the creation of the account the registration will be locked.
## Documentations et ressources

* Documentation officielle de l'admin : https://shaarli.readthedocs.io/en/master/
* Dépôt de code officiel de l'app : https://github.com/shaarli/Shaarli
* Documentation YunoHost pour cette app : https://yunohost.org/app_shaarli
* Signaler un bug : https://github.com/YunoHost-Apps/shaarli_ynh/issues

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/shaarli_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/shaarli_ynh/tree/testing --debug
ou
sudo yunohost app upgrade shaarli -u https://github.com/YunoHost-Apps/shaarli_ynh/tree/testing --debug
```

**Plus d'infos sur le packaging d'applications :** https://yunohost.org/packaging_apps