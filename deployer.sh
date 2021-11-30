#!/bin/bash
# Variable
dbhost=""
dbuser=""
dbpassword=""
dbname=""
mailfrom=""
mailsendername=""
mailsmtpuser=""
mailsmtppassword=""
logpath=""
tmppath=""
# Joomla path installation
joomlapath=""
# Sed commant todo find and replace
sed -i -e "/.*{dbhost}*./ s/.*/\tpublic \$host = '$dbhost';/" $joomlapath/configuration.php
sed -i -e "/.*{dbuser}*./ s/.*/\tpublic \$user = '$dbuser';/" $joomlapath/configuration.php
sed -i -e "/.*{dbpassword}*./ s/.*/\tpublic \$password = '$dbpassword';/" $joomlapath/configuration.php
sed -i -e "/.*{dbname}*./ s/.*/\tpublic \$db = '$dbname';/" $joomlapath/configuration.php
sed -i -e "/.*{mailfrom}*./ s/.*/\tpublic \$mailfrom = '$mailfrom';/" $joomlapath/configuration.php
sed -i -e "/.*{mailsendername}*./ s/.*/\tpublic \$fromname = '$mailsendername';/" $joomlapath/configuration.php
sed -i -e "/.*{mailsmtpuser}*./ s/.*/\tpublic \$smtpuser = '$mailsmtpuser';/" $joomlapath/configuration.php
sed -i -e "/.*{mailsmtppassword}*./ s/.*/\tpublic \$smtppass = '$mailsmtppassword';/" $joomlapath/configuration.php
sed -i -e "/.*{logpath}*./ s/.*/\tpublic \$log_path = '$logpath';/" $joomlapath/configuration.php
sed -i -e "/.*{tmppath}*./ s/.*/\tpublic \$tmp_path = '$tmppath';/" $joomlapath/configuration.php
# htaccess Variable
basepath=""
# Sed commant todo find and replace
sed -i -e "/.*{basepath}*./ s/.*/RewriteBase $basepath\//" $joomlapath/.htaccess