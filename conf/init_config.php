<?php
$GLOBALS['salt'] = 'YNH_SALT';
$GLOBALS['timezone'] = 'YNH_TIMEZONE';
date_default_timezone_set('YNH_TIMEZONE');
$GLOBALS['title'] = 'YNH_TITLE';
$GLOBALS['redirector'] = '';
$GLOBALS['disablesessionprotection'] = false;
$GLOBALS['disablejquery'] = false;
$GLOBALS['privateLinkByDefault'] = YNH_PRIVATE_LINK_BY_DEFAULT;
$GLOBALS['ynh_admin'] = 'YNH_ADMIN';

$userconfigfile = realpath(dirname(__FILE__)) . '/config_user.php';
if (is_file($userconfigfile))
{
  require($userconfigfile);
}
?>
