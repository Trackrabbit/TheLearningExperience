SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprLoadTempPayrollSummary]  @IN_TempTableName varchar(255),  @IN_TRXNumber smallint,  @IN_TRXDescription varchar(255),  @IN_sYear smallint,  @IN_eYear smallint,  @IN_sDept char(6),  @IN_eDept char(6),  @IN_sPosition char(6),  @IN_ePosition char(6),  @IN_sEmpID char(15),  @IN_eEmpID char(15),  @IN_sEmpClassID char(15),  @IN_eEmpClassID char(15),  @IN_sDate datetime,  @IN_eDate datetime,  @IN_RangeSelect smallint,  @IN_ReportType smallint as  declare   @SQLString Varchar(1500)  if (@IN_TRXNumber <> 3)   BEGIN  Set @SQLString = 'INSERT INTO ' + @IN_TempTableName  Set @SQLString = @SQLString + ' SELECT ' + CAST(@IN_TRXNumber AS CHAR(2)) + ',''1990-01-01 00:00:00.000'' ,''' + @IN_TRXDescription + ''','  IF (@IN_TRXNumber = 1) or  (@IN_TRXNumber = 9)  BEGIN  IF (@IN_TRXNumber = 1)   Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.GRWGPRN - UPR30100.Charged_Tips) '   IF  (@IN_TRXNumber = 9)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.NTWPYRN) '   Set @SQLString = @SQLString + ' - ISNULL((SELECT SUM(UPR30300.PAYADVNC) FROM UPR30300 , UPR30100 , UPR00100  WHERE '  Set @SQLString = @SQLString + ' UPR30300.EMPLOYID = UPR00100.EMPLOYID AND UPR30300.PYRLRTYP = 1 AND UPR30300.AUCTRLCD = UPR30100.AUCTRLCD  AND UPR30300.CHEKNMBR = UPR30100.CHEKNMBR  AND UPR30300.PYADNMBR = UPR30100.PYADNMBR AND  '   IF @IN_RangeSelect= 1   Set @SQLString = @SQLString + '(UPR00100.EMPLOYID >= ''' + @IN_sEmpID + ''' AND UPR00100.EMPLOYID <= ''' + @IN_eEmpID + ''') AND '  IF @IN_RangeSelect= 2   Set @SQLString = @SQLString + '(UPR00100.EMPLCLAS >= ''' + @IN_sEmpClassID + ''' AND UPR00100.EMPLCLAS <= ''' + @IN_eEmpClassID + ''') AND '  IF @IN_RangeSelect= 3   Set @SQLString = @SQLString + '(UPR00100.DEPRTMNT >= ''' + @IN_sDept + ''' AND UPR00100.DEPRTMNT <= ''' + @IN_eDept + ''') AND '  IF @IN_RangeSelect= 4   Set @SQLString = @SQLString + '(UPR00100.JOBTITLE >= ''' + @IN_sPosition + ''' AND UPR00100.JOBTITLE <= ''' + @IN_ePosition + ''') AND '  Set @SQLString = @SQLString + '(UPR30300.CHEKDATE BETWEEN ''' + CONVERT(varchar(10), @IN_sDate, 110) + ''' AND ''' + CONVERT(varchar(10), @IN_eDate, 110) + ''') AND '  Set @SQLString = @SQLString + '(UPR30300.YEAR1 >= ' + CAST(@IN_sYear AS CHAR(4)) + ' AND UPR30300.YEAR1 <= ' + CAST(@IN_eYear AS CHAR(4)) + ') AND '   IF (@IN_TRXNumber = 1)   Set @SQLString = @SQLString + 'UPR30100.VOIDED = 0 AND UPR30300.PAYADVNC > 0.00),0.00)'   IF (@IN_TRXNumber = 9)   Set @SQLString = @SQLString + 'UPR30100.VOIDED = 0),0.00)'    Set @SQLString = @SQLString + ', 0.0),'  END  IF (@IN_TRXNumber = 2)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.FDWGPYRN), 0.0), '  IF (@IN_TRXNumber = 4)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.FDWDGPRN), 0.0), '  IF (@IN_TRXNumber = 5)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.FICASSWP), 0.0), '  IF (@IN_TRXNumber = 6)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.FCASWPR), 0.0), '  IF (@IN_TRXNumber = 7)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.FICAMWGP), 0.0), '  IF (@IN_TRXNumber = 8)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.FICAMWPR), 0.0), '  IF (@IN_TRXNumber = 10)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.Charged_Tips), 0.0), '  IF (@IN_TRXNumber = 11)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.Reported_Tips), 0.0), '  IF (@IN_TRXNumber = 12)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.FDTXTIPS), 0.0), '  IF (@IN_TRXNumber = 13)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.FICASS_TipsPay_Run), 0.0), '  IF (@IN_TRXNumber = 14)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.FICSTPTX), 0.0), '  IF (@IN_TRXNumber = 15)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.Uncollected_FICASS_TaxP), 0.0), '  IF (@IN_TRXNumber = 16)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.FICAMed_TipsPay_Run), 0.0), '  IF (@IN_TRXNumber = 17)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.FICMTPTX), 0.0), '  IF (@IN_TRXNumber = 18)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.Uncollected_FICAMed_TaxP), 0.0), '  IF (@IN_TRXNumber = 19)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.Charged_Receipts), 0.0), '  IF (@IN_TRXNumber = 20)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.Reported_Receipts), 0.0), '  IF (@IN_TRXNumber = 21)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.ALOCTIPS), 0.0), '  IF (@IN_TRXNumber = 22)  Set @SQLString = @SQLString + 'ISNULL(SUM(UPR30100.Federal_TipsPay_Run), 0.0), '   Set @SQLString = @SQLString + '0.0, 0.0 '  Set @SQLString = @SQLString + 'FROM dbo.UPR00100 INNER JOIN dbo.UPR30100 '  Set @SQLString = @SQLString + '  ON UPR00100.EMPLOYID = UPR30100.EMPLOYID '  Set @SQLString = @SQLString + 'WHERE '   IF @IN_RangeSelect= 1   Set @SQLString = @SQLString + '(UPR00100.EMPLOYID >= ''' + @IN_sEmpID + ''' AND UPR00100.EMPLOYID <= ''' + @IN_eEmpID + ''') AND '   IF @IN_RangeSelect= 2   Set @SQLString = @SQLString + '(UPR00100.EMPLCLAS >= ''' + @IN_sEmpClassID + ''' AND UPR00100.EMPLCLAS <= ''' + @IN_eEmpClassID + ''') AND '   IF @IN_RangeSelect= 3   Set @SQLString = @SQLString + '(UPR00100.DEPRTMNT >= ''' + @IN_sDept + ''' AND UPR00100.DEPRTMNT <= ''' + @IN_eDept + ''') AND '   IF @IN_RangeSelect= 4   Set @SQLString = @SQLString + '(UPR00100.JOBTITLE >= ''' + @IN_sPosition + ''' AND UPR00100.JOBTITLE <= ''' + @IN_ePosition + ''') AND '   Set @SQLString = @SQLString + '(UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(10), @IN_sDate, 110) + ''' AND ''' + CONVERT(varchar(10), @IN_eDate, 110) + ''') AND '  Set @SQLString = @SQLString + '(UPR30100.YEAR1 >= ' + CAST(@IN_sYear AS CHAR(4)) + ' AND UPR30100.YEAR1 <= ' + CAST(@IN_eYear AS CHAR(4)) + ') AND '  Set @SQLString = @SQLString + 'UPR30100.VOIDED = 0 '  END ELSE  BEGIN  Set @SQLString = 'INSERT INTO ' + @IN_TempTableName  Set @SQLString = @SQLString + ' SELECT ' + CAST(@IN_TRXNumber AS CHAR(2)) + ',''1990-01-01 00:00:00.000'',''' + @IN_TRXDescription + ''',ISNULL(SUM(UPR30300.UPRTRXAM), 0.0), 0.0, 0.0 '  Set @SQLString = @SQLString + 'FROM dbo.UPR00100 INNER JOIN dbo.UPR00400 '  Set @SQLString = @SQLString + '  ON UPR00100.EMPLOYID = UPR00400.EMPLOYID LEFT OUTER JOIN dbo.UPR30300 '  Set @SQLString = @SQLString + '    ON UPR30300.EMPLOYID = UPR00400.EMPLOYID AND UPR30300.PAYROLCD = UPR00400.PAYRCORD '  Set @SQLString = @SQLString + 'WHERE PYRLRTYP = 1 AND '   IF @IN_RangeSelect= 1   Set @SQLString = @SQLString + '(UPR00100.EMPLOYID >= ''' + @IN_sEmpID + ''' AND UPR00100.EMPLOYID <= ''' + @IN_eEmpID + ''') AND '   IF @IN_RangeSelect= 2   Set @SQLString = @SQLString + '(UPR00100.EMPLCLAS >= ''' + @IN_sEmpClassID + ''' AND UPR00100.EMPLCLAS <= ''' + @IN_eEmpClassID + ''') AND '   IF @IN_RangeSelect= 3   Set @SQLString = @SQLString + '(UPR00100.DEPRTMNT >= ''' + @IN_sDept + ''' AND UPR00100.DEPRTMNT <= ''' + @IN_eDept + ''') AND '   IF @IN_RangeSelect= 4   Set @SQLString = @SQLString + '(UPR00100.JOBTITLE >= ''' + @IN_sPosition + ''' AND UPR00100.JOBTITLE <= ''' + @IN_ePosition + ''') AND '   Set @SQLString = @SQLString + '(UPR30300.CHEKDATE BETWEEN ''' + CONVERT(varchar(10), @IN_sDate, 110) + ''' AND ''' + CONVERT(varchar(10), @IN_eDate, 110) + ''') AND '  Set @SQLString = @SQLString + '(UPR30300.YEAR1 >= ' + CAST(@IN_sYear AS CHAR(4)) + ' AND UPR30300.YEAR1 <= ' + CAST(@IN_eYear AS CHAR(4)) + ') AND '  Set @SQLString = @SQLString + 'UPR30300.PAYADVNC = 0 AND UPR00400.PAYTYPE = 13 '  END  EXEC(@SQLString)  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprLoadTempPayrollSummary] TO [DYNGRP]
GO