# Joomla! Configurator script

A handy script to deploy our jooma installations! On multiple environments (production, development and testing) without the need for each new update or release to modify the configuration or htaccess file again, just run the correctly configured script and the portal is operational again

## Installation

for _logpath_ and _tmppath_ remember to quote slash of path example

```SHELL
/var/www/html/tmp
```

write

```SHELL
\/var\/www\/html\/tmp
```

## Joomla! Implementation

Replace in configuration.php all variable to deply

```PHP
public $host = '{dbhost}';
public $user = '{dbuser}';
public $password = '{dbpassword}';
public $db = '{dbname}';
public $mailfrom = '{mailfrom}';
public $fromname = '{mailfromname}';
public $smtpuser = '{mailsmtpuser}';
public $smtppass = '{mailsmtppassword}';
public $log_path = '{logpath}';
public $tmp_path = '{tmppath}';
```

all done!
