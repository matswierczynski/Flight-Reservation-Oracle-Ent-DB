shutdown immediate;
startup mount;
flashback database to restore point without_improvements;
alter database open RESETLOGS;