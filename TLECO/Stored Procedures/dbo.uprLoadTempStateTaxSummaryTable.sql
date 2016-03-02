SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprLoadTempStateTaxSummaryTable]  @IN_TempTableName varchar(255),  @IN_sYear smallint,  @IN_eYear smallint,  @IN_sDept char(6),  @IN_eDept char(6),  @IN_sPosition char(6),  @IN_ePosition char(6),  @IN_sEmpID char(15),  @IN_eEmpID char(15),  @IN_sEmpClassID char(15),  @IN_eEmpClassID char(15),  @IN_sDate datetime,  @IN_eDate datetime,  @IN_RangeSelect smallint,  @IN_ReportType smallint as  declare @SQLString Varchar(1000)  Set @SQLString = 'INSERT INTO ' + @IN_TempTableName Set @SQLString = @SQLString + ' SELECT UPR30300.PAYROLCD, ''1990-01-01 00:00:00.000'', ISNULL(SUM(UPR30300.TXBLWAGS), 0.0), ISNULL(SUM(UPR30300.UPRTRXAM), 0.0), 0.0, 0.0, 0.0, 0.0 ' Set @SQLString = @SQLString + 'FROM dbo.UPR00100 INNER JOIN dbo.UPR00700 ' Set @SQLString = @SQLString + '  ON UPR00100.EMPLOYID = UPR00700.EMPLOYID LEFT OUTER JOIN dbo.UPR30300 ' Set @SQLString = @SQLString + '    ON UPR30300.EMPLOYID = UPR00700.EMPLOYID AND UPR30300.PAYROLCD = UPR00700.STATECD ' Set @SQLString = @SQLString + 'WHERE PYRLRTYP = 4 AND '  IF @IN_RangeSelect= 1   Set @SQLString = @SQLString + '(UPR00100.EMPLOYID >= ''' + @IN_sEmpID + ''' AND UPR00100.EMPLOYID <= ''' + @IN_eEmpID + ''') AND '  IF @IN_RangeSelect= 2   Set @SQLString = @SQLString + '(UPR00100.EMPLCLAS >= ''' + @IN_sEmpClassID + ''' AND UPR00100.EMPLCLAS <= ''' + @IN_eEmpClassID + ''') AND '  IF @IN_RangeSelect= 3   Set @SQLString = @SQLString + '(UPR00100.DEPRTMNT >= ''' + @IN_sDept + ''' AND UPR00100.DEPRTMNT <= ''' + @IN_eDept + ''') AND '  IF @IN_RangeSelect= 4   Set @SQLString = @SQLString + '(UPR00100.JOBTITLE >= ''' + @IN_sPosition + ''' AND UPR00100.JOBTITLE <= ''' + @IN_ePosition + ''') AND '  Set @SQLString = @SQLString + '(UPR30300.CHEKDATE BETWEEN ''' + CONVERT(varchar(10), @IN_sDate, 110) + ''' AND ''' + CONVERT(varchar(10), @IN_eDate, 110) + ''') AND ' Set @SQLString = @SQLString + '(UPR30300.YEAR1 >= ' + CAST(@IN_sYear AS CHAR(4)) + ' AND UPR30300.YEAR1 <= ' + CAST(@IN_eYear AS CHAR(4)) + ') AND ' Set @SQLString = @SQLString + 'UPR30300.PAYADVNC = 0 ' Set @SQLString = @SQLString + 'GROUP BY PAYROLCD '  EXEC(@SQLString)  Set @SQLString = 'INSERT INTO ' + @IN_TempTableName Set @SQLString = @SQLString + ' SELECT DISTINCT UPR00700.STATECD, ''1990-01-01 00:00:00.000'', 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ' Set @SQLString = @SQLString + 'FROM dbo.UPR00100 INNER JOIN dbo.UPR00700 ' Set @SQLString = @SQLString + '  ON UPR00100.EMPLOYID = UPR00700.EMPLOYID ' Set @SQLString = @SQLString + 'WHERE '  IF @IN_RangeSelect= 1   Set @SQLString = @SQLString + '(UPR00100.EMPLOYID >= ''' + @IN_sEmpID + ''' AND UPR00100.EMPLOYID <= ''' + @IN_eEmpID + ''') AND '  IF @IN_RangeSelect= 2   Set @SQLString = @SQLString + '(UPR00100.EMPLCLAS >= ''' + @IN_sEmpClassID + ''' AND UPR00100.EMPLCLAS <= ''' + @IN_eEmpClassID + ''') AND '  IF @IN_RangeSelect= 3   Set @SQLString = @SQLString + '(UPR00100.DEPRTMNT >= ''' + @IN_sDept + ''' AND UPR00100.DEPRTMNT <= ''' + @IN_eDept + ''') AND '  IF @IN_RangeSelect= 4   Set @SQLString = @SQLString + '(UPR00100.JOBTITLE >= ''' + @IN_sPosition + ''' AND UPR00100.JOBTITLE <= ''' + @IN_ePosition + ''') AND '  Set @SQLString = @SQLString + '((SELECT COUNT(*) FROM ' + @IN_TempTableName + ' WHERE ' + @IN_TempTableName + '.STATECD = UPR00700.STATECD) = 0)'  EXEC(@SQLString)  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprLoadTempStateTaxSummaryTable] TO [DYNGRP]
GO
