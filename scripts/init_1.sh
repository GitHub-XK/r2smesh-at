#!/bin/sh

echo '' > init_1.log

# Make new log folder
$r2s_scripts/backup_folder.sh $r2s_log >> init_1.log
mkdir -pv $r2s_log                     >> init_1.log

# Make new out folder 
if [ "$r2s_continue" != "yes" ]; then
    $r2s_scripts/backup_folder.sh $r2s_out  >> init_1.log
fi    
mkdir -pv $r2s_out                          >> init_1.log

exit 0

