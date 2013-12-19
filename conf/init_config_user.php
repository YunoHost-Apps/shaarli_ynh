#!/usr/bin/php
<?php

require('/home/yunohost.app/shaarli/data/config.php');

$userlist=$argv;
array_shift($userlist);

foreach($userlist as $usercount => $userlogin)
{  
  $userlevel = '2';
  if ($userlogin == $GLOBALS['ynh_admin'])
  {
    $userlevel = '4';
  }
  
  $currentLogin    = array($userlogin);
  $currentPassword = array($userlogin => '');
  $currentLevel    = array($userlogin => $userlevel);
  $currentEmail    = array($userlogin => '');

  if (array_key_exists('login', $GLOBALS))
  {
    $GLOBALS['login'] = array_merge($GLOBALS['login'], $currentLogin);
    $GLOBALS['password'] = array_merge($GLOBALS['password'], $currentPassword);
    $GLOBALS['level'] = array_merge($GLOBALS['level'], $currentLevel);
    $GLOBALS['email'] = array_merge($GLOBALS['email'], $currentEmail);
  }
  else
  {
    $GLOBALS['login']    = $currentLogin;
    $GLOBALS['password'] = $currentPassword;
    $GLOBALS['level']    = $currentLevel;
    $GLOBALS['email']    = $currentEmail;
  }
}

$userconf  = '<?php' . PHP_EOL;
$userconf .= '$GLOBALS[\'login\'] = ' . var_export($GLOBALS['login'],true) . ';' . PHP_EOL;
$userconf .= '$GLOBALS[\'password\'] = ' . var_export($GLOBALS['password'],true) . ';' . PHP_EOL;
$userconf .= '$GLOBALS[\'level\'] = ' . var_export($GLOBALS['level'],true) . ';' . PHP_EOL;
$userconf .= '$GLOBALS[\'email\'] = ' . var_export($GLOBALS['email'],true) . ';' . PHP_EOL;
$userconf .= '?>';

$userconf_file = '/home/yunohost.app/shaarli/data/config_user.php';
if (!file_put_contents($userconf_file, $userconf) || strcmp(file_get_contents($userconf_file),$userconf)!=0)
{
  fwrite(STDERR, "Error while writing " . $userconf_file);
  exit(1);
}

?>
