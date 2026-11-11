#!/bin/bash

DATA=$(date +%Y%m%d)

mongodump \
--db ua4_pratica \
--out backup_ua4_$DATA

echo "Backup concluído com sucesso."