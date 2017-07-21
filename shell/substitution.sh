#!/bin/bash

# sysinfo_page - A script to produce an HTML file

title="System Information for"
time=$(date +"%x %r %Z")
time_user="Uploaded on $time by $USER"
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
    </body>
    </html>
_EOF_
