# SOS

Ce repo contient le site de l'association `Sans Oublier le Sourire` (Montréal)


## Commandes

- Update legacy website
```
rsync -arvz sos/ sos@sansoublierlesourire.org:/var/www/legacy
```

```
docker-compose exec mysql mysqldump -u sos-user -p<insert-password-here> sos | grep -v "Warning" > docker/db.sql
```

