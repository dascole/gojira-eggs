#!/bin/bash
docker exec OpenLdap ldapmodify -a -x -h localhost -p 389 -D "cn=admin,dc=contoso,dc=com" -f /data/ldif/001-startup.ldif -c -w changeme
docker exec OpenLdap ldapmodify -a -x -h localhost -p 389 -D "cn=admin,dc=contoso,dc=com" -f /data/ldif/002-create-groups.ldif -c -w changeme
docker exec OpenLdap ldapmodify -a -x -h localhost -p 389 -D "cn=admin,dc=contoso,dc=com" -f /data/ldif/003-create-users.ldif -c -w changeme