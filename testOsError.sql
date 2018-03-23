WHENEVER OSERROR EXIT 9;
WHENEVER SQLERROR EXIT SQL.SQLCODE;

spool a-bad?filename
select count(1) from dual;

select * from dual;

spool off
exit;
