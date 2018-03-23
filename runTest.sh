

export PATH=$PATH:/Library/Oracle/instantclient_11_2
sqlplus -s  user1/user1@//crdRepo/slob @sqlStmtErr.sql

result="$?"

if [ "$result" -ne 0 ]; then
    echo "sqlplus sqlStmtErr exited with status $result"
fi



sqlplus -s  user1/user1@//crdRepo/slob @PLSQLerr.sql

result="$?"

if [ "$result" -ne 0 ]; then
    echo "sqlplus PLSQLerr exited with status $result"
fi




sqlplus -s  user1/user1@//crdRepo/slob @sqlSucess.sql

result="$?"

if [ "$result" -ne 0 ]; then
    echo "sqlplus sqlSucess exited with status $result"
fi




sqlplus -s  user1/user1@//crdRepo/slob @wrapped.sql

result="$?"

if [ "$result" -ne 0 ]; then
    echo "sqlplus wrapped exited with status $result"
fi


sqlplus -s  user1/user1@//crdRepo/slob @testOsError.sql
result="$?"

if [ "$result" -ne 0 ]; then
    echo "sqlplus testOsError exited with status $result"
fi







