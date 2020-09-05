#!/bin/sh

# Purge all configs from a previous attempt at a mail server.
# Doesn't delete mail or anything like that.
pacman -Rns dovecot spamassassin postfix pigeonhole opendkim

# Some stragglers that often stay undeleted.
rm -rf /etc/dovecot /var/lib/dovecot /etc/mailname
