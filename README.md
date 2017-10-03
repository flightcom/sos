# SOS

## Commands

```
docker-compose exec mysql mysqldump -u sos-user -p<insert-password-here> sos | grep -v "Warning" > docker/db.sql
```
