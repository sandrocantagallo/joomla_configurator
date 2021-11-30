#!/bin/bash
# htaccess var
cmsmagazine_base=""
cmsmagazine_rule=""
# Joomla path installation
joomlapath=""
# config magazine
magazine_url=""
site_url=""
cms_path=""
sidebar_header=""
newsletter_form=""
menu_static=""
google_user_id=""
show_cookie_banner=""
testo_cookie_privacy=""
cookie_policy_link=""
privacy_policy_link=""
folder_installation=""
offline=""
protocol=""
# htaccess Sed commant todo find and replace
sed -i -e "/.*{cmsmagazine_base}*./ s/.*/RewriteBase $cmsmagazine_base\//" $joomlapath/relazione-annuale/.htaccess
sed -i -e "/.*{cmsmagazine_rule}*./ s/.*/RewriteRule ^\([^\\.]+\)\.html$ $cmsmagazine_rule\/index.php?code=\$1 [NC,L]/" $joomlapath/relazione-annuale/.htaccess
# config for magazine frontend Sed commant todo find and replace
sed -i -e "/.*{magazine_url}*./ s/.*/\tdefine\(\"magazine_url\", \"$magazine_url\"\);/" $joomlapath/mag/Include/config.php
sed -i -e "/.*{site_url}*./ s/.*/\tdefine\(\"site_url\", \"$site_url\"\);/" $joomlapath/mag/Include/config.php
sed -i -e "/.*{cms_path}*./ s/.*/\tdefine\(\"cms_path\", \"$cms_path\"\);/" $joomlapath/mag/Include/config.php
sed -i -e "/.*{sidebar_header}*./ s/.*/\tdefine\(\"sidebar_header\", $sidebar_header\);/" $joomlapath/mag/Include/config.php
sed -i -e "/.*{newsletter_form}*./ s/.*/\tdefine\(\"newsletter_form\", $newsletter_form\);/" $joomlapath/mag/Include/config.php
sed -i -e "/.*{menu_static}*./ s/.*/\tdefine\(\"menu_static\", $menu_static\);/" $joomlapath/mag/Include/config.php
sed -i -e "/.*{google_user_id}*./ s/.*/\tdefine\(\"google_user_id\", \"$google_user_id\"\);/" $joomlapath/mag/Include/config.php
sed -i -e "/.*{show_cookie_banner}*./ s/.*/\tdefine\(\"show_cookie_banner\", $show_cookie_banner\);/" $joomlapath/mag/Include/config.php
sed -i -e "/.*{protocol}*./ s/.*/\tdefine\(\"protocol\", \"$protocol\"\)/" $joomlapath/mag/Include/config.php
ESCAPED_KEYWORD=$(printf '%s\n' "$testo_cookie_privacy" | sed -e 's/[]\/$*.^[]/\\&/g');
sed -i -e "/.*{testo_cookie_privacy}*./ s/.*/\tdefine\(\"testo_cookie_privacy\", \"$ESCAPED_KEYWORD\"\);/" $joomlapath/mag/Include/config.php
sed -i -e "/.*{cookie_policy_link}*./ s/.*/\tdefine\(\"cookie_policy_link\", \"$cookie_policy_link\"\);/" $joomlapath/mag/Include/config.php
sed -i -e "/.*{privacy_policy_link}*./ s/.*/\tdefine\(\"privacy_policy_link\", \"$privacy_policy_link\"\);/" $joomlapath/mag/Include/config.php
sed -i -e "/.*{folder_installation}*./ s/.*/\tdefine\(\"folder_installation\", \"$folder_installation\"\);/" $joomlapath/mag/Include/config.php
sed -i -e "/.*{offline}*./ s/.*/\tdefine\(\"offline\", $offline\);/" $joomlapath/mag/Include/config.php
#escaped_keyword funziona



