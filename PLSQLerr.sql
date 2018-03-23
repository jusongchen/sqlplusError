
WHENEVER OSERROR EXIT 9;
WHENEVER SQLERROR EXIT SQL.SQLCODE; 


variable jobno number;
BEGIN
DBMS_JOB.SUBMIT(
        :jobno,
        'DBMS_WORKLOAD_R EPOSITORY.CREATE_SNAPSHOT();',
       sysdate,
        'SYSDATE+1/24/4'
        )
;
 COMMIT;
END
;
/

exit;