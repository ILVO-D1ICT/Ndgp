library(RODBC)

# open odbc connections - via windows authentication
conn <- odbcDriverConnect(connection = "driver={SQL Server};server=srvSqlD1;database=D1_Reporting;trusted_connection=yes;")


# load SQL data into var
TR_2013<-sqlQuery(conn, paste("EXEC  [ext].[Ices_StdDataExchFmt_CS_TR] @Type = 'C', @Year = 2014"), as.is=TRUE)
HH_2013<-sqlQuery(conn, paste("EXEC  [ext].[Ices_StdDataExchFmt_CS_HH] @Type = 'C', @Year = 2014"), as.is=TRUE)
SL_2013<-sqlQuery(conn, paste("EXEC  [ext].[Ices_StdDataExchFmt_CS_SL] @Type = 'C', @Year = 2014"), as.is=TRUE)
HL_2013<-sqlQuery(conn, paste("EXEC  [ext].[Ices_StdDataExchFmt_CS_HL] @Type = 'C', @Year = 2014"), as.is=TRUE)

CL_2013<-sqlQuery(conn, paste("EXEC  [ext].[Ices_StdDataExchFmt_CL] @Type = 'C', @Year = 2014, @species = 'PLE', @area = '4c',@Metier = 'TBB_DEF_70-99'"), as.is=TRUE, max = 1000)
CE_2013<-sqlQuery(conn, paste("EXEC  [ext].[Ices_StdDataExchFmt_CE] @Type = 'C', @Year = 2014"), as.is=TRUE, max = 1000)