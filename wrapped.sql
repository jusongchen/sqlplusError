WHENEVER OSERROR EXIT 9;
WHENEVER SQLERROR EXIT SQL.SQLCODE;

select count(1) from dual;

@@sqlError.sql
select * from dual;

exit;
