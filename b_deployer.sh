#!/bin/bash
# Variable
basepath=""
baseb=""
basedetail=""
b_environment=""
joomlapath=""
# Sed in action
sed -i -e "/.*{basepath}*./ s/.*/RewriteBase $basepath/" $joomlapath/b/.htaccess
sed -i -e "/.*{baseb}*./ s/.*/RewriteRule ^([^\.]+)\.png$  $baseb/b/index.php?code=\$1 [NC,L]/" $joomlapath/b/.htaccess
sed -i -e "/.*{basedetail}*./ s/.*/RewriteRule ^([^\.]+)\.html$   $basedetail/b/dettaglio.php?param=\$1 [NC,L]/" $joomlapath/b/.htaccess
sed -i -e "/.*{basepath}*./ s/.*/RewriteBase $basepath/b/" $joomlapath/b/qrcode/.htaccess
sed -i -e "/.*{basedetail}*./ s/.*/RewriteRule ^([^\.]+)\.png$   $basedetail/b/qrcode/index.php?code=\$1 [NC,L]" $joomlapath/b/qrcode/.htaccess
sed -i -e "/.*{b_environment}*./ s/.*/define('environment', '$b_environment');/" $joomlapath/b/include/config.inc.php



