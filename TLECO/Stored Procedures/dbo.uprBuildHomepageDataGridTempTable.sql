SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[uprBuildHomepageDataGridTempTable]   @employeeId varchar(100),   @startDate varchar(100),  @endDate varchar(100),  @tableName varchar(100),  @Error int output  AS declare @sqlString varchar(1000) = 'insert into ' + @tableName +  ' select distinct TimeCard.PayCode, TimeCard.UNTSTOPY, TimeCard.TRXDATE from UPR10501 as TimeCard where TimeCard.EMPLOYID = ''' + @employeeId + '''  and TimeCard.TRXDATE >= ''' + @startDate + '''  and TimeCard.TRXDATE <= ''' + @endDate + '''  group by TimeCard.PayCode, TimeCard.UNTSTOPY, TimeCard.TRXDATE'  print @sqlString  execute (@sqlString)    
GO
GRANT EXECUTE ON  [dbo].[uprBuildHomepageDataGridTempTable] TO [DYNGRP]
GO
