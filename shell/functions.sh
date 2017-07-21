#!/bin/bash

# sysinfo_page - A script to produce an HTML file

#### Constants 

title="System Information for"
time=$(date +"%x %r %Z")
time_user="Uploaded on $time by $USER"
#### Functions
system_info()
{
	echo "<h2>System Info</h2>"
	echo "<pre>"
	echo "</pre>"
}
show_uptime()
{

	echo "<h2>System uptime</h2>"
	echo "<pre>"
		uptime
	echo "</pre>"
}
drive_space()
{
	echo "<h2>Disk Space</h2>"
	echo "<pre>"
		df
	echo "</pre>"
}
home_space()
{
	if [ "$(id-u)" = "0" ]; then 
		echo "<h1>Home Space Available </h1>"
		echo "<pre>"
		du -sh /home/subbi/* |sort -nr
		echo "</pre>"
	fi
}

#### Main
cat <<- _EOF_
    <html>
    <head>
        <title>
        $title $HOSTNAME
        </title>
    </head>

    <body>
		<h1>$title $HOSTNAME</h1>
		<p>$time_user</p>
		$(system_info)
		$(show_uptime)
		$(drive_space)
		$(home_space)
    </body>
    </html>
_EOF_
