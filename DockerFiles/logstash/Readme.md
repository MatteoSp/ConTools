# A logstash image with 3rd parties plugin mounted

logstash version: 8.14.2

## Plugin list

### JDBC Driver for SQL Server
Source: [Download Microsoft JDBC Driver for SQL Server
](https://learn.microsoft.com/en-us/sql/connect/jdbc/download-microsoft-jdbc-driver-for-sql-server)

Version: 12.6.3.0

Files:
- mssql-jdbc-12.6.3.jre8.jar mounted in /usr/share/logstash/logstash-core/lib/jars/
- mssql-jdbc-12.6.3.jre11.jar mounted in /usr/share/logstash/logstash-core/lib/jars/