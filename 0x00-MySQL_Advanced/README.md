Comments for your SQL file:
$ cat my_script.sql
-- 3 first students in the Batch ID=3
-- because Batch 3 is the best!
SELECT id, name FROM students WHERE batch_id = 3 ORDER BY created_at DESC LIMIT 3;
$
Use “container-on-demand” to run MySQL
Ask for container Ubuntu 18.04 - Python 3.7
Connect via SSH
Or via the WebTerminal
In the container, you should start MySQL before playing with it:
$ service mysql start
 * MySQL Community Server 5.7.30 is started
$
$ cat 0-list_databases.sql | mysql -uroot -p my_database
Enter password: 
Database
information_schema
mysql
performance_schema
sys
