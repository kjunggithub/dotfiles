#!/bin/bash

#config
vhost=$1
vhostpath="/etc/apache2/extra/httpd-vhosts.conf"
hostpath="/etc/hosts"
wwwpath="/Users/kjung/Sites/"
vhostroot="$wwwpath""$vhost"
email="admin@kjung.ca"
localhost="127.0.0.1"

#make folders
echo "creating folders..."

mkdir -p "$wwwpath""$vhost"/sessions/
mkdir -p "$wwwpath""$vhost"/tmp/
mkdir -p "$wwwpath""$vhost"/logs/
mkdir -p "$wwwpath""$vhost"/public/

#setting permissions
chown kjung:staff "$wwwpath""$vhost"/tmp && chmod 777 "$wwwpath""$vhost"/tmp

#httpd-vhosts.conf
echo "adding vhost..."
cp $vhostpath $vhostpath.backup

echo "\n" >> $vhostpath
echo "#vhost for" "$vhost" >> $vhostpath
	echo "<VirtualHost *:80>" >> $vhostpath
  echo "\tServerAdmin" "$email" >> $vhostpath
	echo "\tServerName" "$vhost" >> $vhostpath
	echo "\tServerAlias" "www.""$vhost" >> $vhostpath
	echo "\tDocumentRoot" "\"$vhostroot""/public\"" >> $vhostpath
	echo "\tErrorLog" "\"$vhostroot""/logs/""$vhost""-error.log\"" >> $vhostpath
	echo "\tCustomLog" "\"$vhostroot""/logs/""$vhost""-access.log\" common" >> $vhostpath
	echo "\t\t<Directory" "\"$vhostroot""/public\""">" >> $vhostpath
		echo "\t\t\tOptions Indexes FollowSymLinks" >> $vhostpath
		echo "\t\t\tAllowOverride All" >> $vhostpath
		echo "\t\t\tOrder allow,deny" >> $vhostpath
		echo "\t\t\tAllow from all" >> $vhostpath
	echo "\t\t</Directory>" >> $vhostpath
  echo "\t\tphp_admin_value sendmail_path '/usr/bin/env catchmail'" >> $vhostpath
  echo "\t\tphp_value session.save_path" ""$wwwpath""$vhost"/sessions" >> $vhostpath
	echo '</VirtualHost>' >> $vhostpath

  #add hosts
  echo "adding hosts..."
  echo "\n" >> $hostpath
  echo "#hosts for" "$vhost" >> $hostpath
  echo "$localhost" "$vhost" "www.""$vhost" >> $hostpath

  #restart apache
  echo "restarting Apache..."
  sudo apachectl restart

  #add default pages
  echo "creating default pages..."
  touch "$vhostroot""/public/index.php"
  echo "<?php echo '<h1>vhost "$vhost" created successfully!</h4>'; ?>" >>  "$vhostroot""/public/index.php"

  #restart apache
  echo "restarting Apache..."
  sudo apachectl restart

  #launch it
  echo "launching via chrome && finder..."
  chown -R kjung "$vhostroot"
  open -a Google\ Chrome "http://""$vhost""/"
  cd "$vhostroot""/public/" && open .

  #finished
  echo "$vhost" "created successfully!"
  say -v Vicki "$vhost" "created successfully!"
