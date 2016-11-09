
echo OFF

SET server=COMPND-STTFSP\SQL2012STDSP1
SET user=inspireqa
SET pwd=EMP123user
SET db=Panther_Compunnel_Com_AWS_6MAY2016_QA

echo  running ddl

sqlcmd -S %server% -U %user% -P %pwd% -d %db% -o ddl.log    -i ddl.sql

echo  running src

sqlcmd -S %server% -U %user% -P %pwd% -d %db% -o src.log    -i src.sql

echo  running dml

sqlcmd -S %server% -U %user% -P %pwd% -d %db% -o dml.log    -i dml.sql





























