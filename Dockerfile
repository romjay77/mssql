FROM mcr.microsoft.com/mssql/server:2019-latest

    ENV ACCEPT_EULA=Y
    ENV SA_PASSWORD=!S@bchuk1
    ENV MSSQL_PID=Developer
    ENV MSSQL_TCP_PORT=1433 
    
    # WORKDIR /src
    
    # COPY MarketBackup.bak /dbbackups/MarketBackup.bak 
    
    #        RUN (/opt/mssql/bin/sqlservr --accept-eula & ) | grep -q "Service Broker manager has started" &&  /opt/mssql-tools/bin/sqlcmd -S127.0.0.1 -Usa -P!S@bchuk1  -Q"RESTORE DATABASE ComissionMarket FROM DISK='/dbbackups/MarketBackup.bak';" 