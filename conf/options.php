<?php
/*
 * DATADIR is defined in index.php, and cannot be defined elsewhere
 *
$GLOBALS['config']['DATADIR'] = '/home/yunohost.app/shaarli/data'; // Data subdirectory
*/
$GLOBALS['config']['CONFIG_FILE'] = $GLOBALS['config']['DATADIR'].'/config.php'; // Configuration file (user login/password)
$GLOBALS['config']['DATASTORE'] = $GLOBALS['config']['DATADIR'].'/datastore.php'; // Data storage file.
$GLOBALS['config']['LINKS_PER_PAGE'] = 20; // Default links per page.
$GLOBALS['config']['IPBANS_FILENAME'] = $GLOBALS['config']['DATADIR'].'/ipbans.php'; // File storage for failures and bans.
$GLOBALS['config']['BAN_AFTER'] = 4;        // Ban IP after this many failures.
$GLOBALS['config']['BAN_DURATION'] = 1800;  // Ban duration for IP address after login failures (in seconds) (1800 sec. = 30 minutes)
$GLOBALS['config']['OPEN_SHAARLI'] = false; // If true, anyone can add/edit/delete links without having to login
$GLOBALS['config']['HIDE_TIMESTAMPS'] = false; // If true, the moment when links were saved are not shown to users that are not logged in.
$GLOBALS['config']['HIDE_QRCODE'] = false; // If true, qrcodes are not shown.
$GLOBALS['config']['ENABLE_THUMBNAILS'] = true; // Enable thumbnails in links.
$GLOBALS['config']['CACHEDIR'] = '/home/yunohost.app/shaarli/cache'; // Cache directory for thumbnails for SLOW services (like flickr)
$GLOBALS['config']['PAGECACHE'] = '/home/yunohost.app/shaarli/pagecache'; // Page cache directory.
$GLOBALS['config']['ENABLE_LOCALCACHE'] = true; // Enable Shaarli to store thumbnail in a local cache. Disable to reduce webspace usage.
$GLOBALS['config']['PUBSUBHUB_URL'] = ''; // PubSubHubbub support. Put an empty string to disable, or put your hub url here to enable.
$GLOBALS['config']['UPDATECHECK_FILENAME'] = $GLOBALS['config']['DATADIR'].'/lastupdatecheck.txt'; // For updates check of Shaarli.
$GLOBALS['config']['UPDATECHECK_INTERVAL'] = 86400 ; // Updates check frequency for Shaarli. 86400 seconds=24 hours
$GLOBALS['config']['RTP_TMPDIR'] = '/home/yunohost.app/shaarli/tmp'; // Rain template tmp directory.
