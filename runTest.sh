

export PATH=$PATH:/Library/Oracle/instantclient_11_2
sqlplus -s  user1/user1@//crdRepo/slob @sqlStmtErr.sql

result="$?"

if [ "$result" -ne 0 ]; then
    echo "sqlplus sqlStmtErr exited with non-zero status $result"
fi



sqlplus -s  user1/user1@//crdRepo/slob @PLSQLerr.sql

result="$?"

if [ "$result" -ne 0 ]; then
    echo "sqlplus PLSQLerr exited with non-zero status $result"
fi




sqlplus -s  user1/user1@//crdRepo/slob @sqlSucess.sql

result="$?"

if [ "$result" -ne 0 ]; then
    echo "sqlplus sqlSucess exited with non-zero status $result"
fi





