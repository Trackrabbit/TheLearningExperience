SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprLoadTempXCmpyPayrollSummary]  @IN_TempTableName varchar(255),  @IN_CompanyName char(64),  @IN_CompanyID char(5),  @IN_TRXNumber smallint,  @IN_TRXDescription varchar(255),  @IN_sYear smallint,  @IN_eYear smallint,  @IN_sDept char(6),  @IN_eDept char(6),  @IN_sPosition char(6),  @IN_ePosition char(6),  @IN_sEmpID char(15),  @IN_eEmpID char(15),  @IN_sEmpClassID char(15),  @IN_eEmpClassID char(15),  @IN_sDate datetime,  @IN_eDate datetime,  @IN_RangeSelect smallint,  @IN_ReportType smallint as  DECLARE @SQLString   varchar(4000) DECLARE @CompanyID  varchar(5) DECLARE @QDate      datetime DECLARE @YDate      datetime  SET @YDate = '19000101' SET @YDate = DATEADD(yyyy, datepart(yyyy, @IN_sDate) - 1900, @YDate) IF (@IN_ReportType = 3)  SET @YDate = @IN_sDate  SET @QDate = '19000101' SET @QDate = DATEADD(yyyy, datepart(yyyy, @IN_sDate) - 1900, @QDate) IF (month(@IN_sDate) >= 4) AND (month(@IN_sDate) <= 6)  SET @QDate = DATEADD(mm, 3, @QDate) IF (month(@IN_sDate) >= 7) AND (month(@IN_sDate) <= 9)  SET @QDate = DATEADD(mm, 6, @QDate) IF (month(@IN_sDate) >= 10)  SET @QDate = DATEADD(mm, 9, @QDate)  SET @CompanyID = rtrim(@IN_CompanyID)  if (@IN_TRXNumber <> 3)   BEGIN  SET @SQLString = 'INSERT INTO ' + @IN_TempTableName + '(CMPNYNAM,PYRLRTYP,PAYROLCD,EMPLOYID,LASTNAME,FRSTNAME,MIDLNAME,PYRLDSCR,MTDTXBWG,MNTHHRS,MNTHSWGS,MNTHSTTL,FLAG,MONTHTAX,QTDHOURS,QTDWAGES,QTDTXWGS,QTDTAX,QTDTOTAL,YTDHOURS,YTDWAGES,YTDTXWGS,YTDTAX,YTDTOTAL) '  SET @SQLString = @SQLString + ' SELECT ' + QUOTENAME(@IN_CompanyName,'''') + ',' + CAST(@IN_TRXNumber as char(2)) +' ,''' + @IN_CompanyID + ''','''' , '''' , '''' , '''' ,'''+ @IN_TRXDescription + ''','   IF (@IN_ReportType = 2)   SET @SQLString = @SQLString + ' 0.0, '  ELSE  BEGIN  IF (@IN_TRXNumber = 1) or  (@IN_TRXNumber = 9)  BEGIN  IF (@IN_TRXNumber = 1)   SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.GRWGPRN - '+ @CompanyID +'.dbo.UPR30100.Charged_Tips ELSE 0.0 END) '   IF  (@IN_TRXNumber = 9)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.NTWPYRN ELSE 0.0 END) '   SET @SQLString = @SQLString + ' - ISNULL((SELECT SUM(' + @CompanyID +'.dbo.UPR30300.PAYADVNC) FROM '+ @CompanyID +'.dbo.UPR30300, '+ @CompanyID +'.dbo.UPR30100, '+ @CompanyID +'.dbo.UPR00100  WHERE '  SET @SQLString = @SQLString + '(' + @CompanyID +'.dbo.UPR30300.EMPLOYID = ' + @CompanyID +'.dbo.UPR00100.EMPLOYID) AND '   SET @SQLString = @SQLString + '(' + @CompanyID +'.dbo.UPR30300.AUCTRLCD = ' + @CompanyID +'.dbo.UPR30100.AUCTRLCD)  AND '  SET @SQLString = @SQLString + '(' + @CompanyID +'.dbo.UPR30300.CHEKNMBR = ' + @CompanyID +'.dbo.UPR30100.CHEKNMBR)  AND '  SET @SQLString = @SQLString + '(' + @CompanyID +'.dbo.UPR30300.PYADNMBR = ' + @CompanyID +'.dbo.UPR30100.PYADNMBR) AND '   SET @SQLString = @SQLString +' (' + @CompanyID +'.dbo.UPR30300.PYRLRTYP = 1) AND '  IF @IN_RangeSelect= 1   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.EMPLOYID >= ''' + @IN_sEmpID + ''' AND '+ @CompanyID +'.dbo.UPR00100.EMPLOYID <= ''' + @IN_eEmpID + ''') AND '  IF @IN_RangeSelect= 2   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.EMPLCLAS >= ''' + @IN_sEmpClassID + ''' AND '+ @CompanyID +'.dbo.UPR00100.EMPLCLAS <= ''' + @IN_eEmpClassID + ''') AND '  IF @IN_RangeSelect= 3   SEt @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.DEPRTMNT >= ''' + @IN_sDept + ''' AND '+ @CompanyID +'.dbo.UPR00100.DEPRTMNT <= ''' + @IN_eDept + ''') AND '  IF @IN_RangeSelect= 4   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.JOBTITLE >= ''' + @IN_sPosition + ''' AND '+ @CompanyID +'.dbo.UPR00100.JOBTITLE <= ''' + @IN_ePosition + ''') AND '  SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(10), @IN_sDate, 110) + ''' AND ''' + CONVERT(varchar(10), @IN_eDate, 110) + ''') AND '  SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR30100.YEAR1 >= ' + CAST(@IN_sYear AS CHAR(4)) + ' AND '+ @CompanyID +'.dbo.UPR30100.YEAR1 <= ' + CAST(@IN_eYear AS CHAR(4)) + ') AND '  IF  (@IN_TRXNumber = 1)  SET @SQLString = @SQLString +  ' NOT(' + @CompanyID +'.dbo.UPR30100.VOIDED = 1  AND ' +  @CompanyID +'.dbo.UPR30100.Voided_by_Void_Checks = 0)  AND ' + @CompanyID +'.dbo.UPR30300.PAYADVNC > 0.00), 0.00) '  IF  (@IN_TRXNumber = 9)  SET @SQLString = @SQLString +  ' NOT(' + @CompanyID +'.dbo.UPR30100.VOIDED = 1  AND ' +  @CompanyID +'.dbo.UPR30100.Voided_by_Void_Checks = 0)), 0.00) '   SET @SQLString = @SQLString +  ', 0.0), '  END   IF (@IN_TRXNumber = 2)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FDWGPYRN ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 4)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FDWDGPRN ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 5)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICASSWP ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 6)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FCASWPR ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 7)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICAMWGP ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 8)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICAMWPR ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 10)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Charged_Tips ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 11)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Reported_Tips ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 12)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FDTXTIPS ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 13)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICASS_TipsPay_Run ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 14)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICSTPTX ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 15)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Uncollected_FICASS_TaxP ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 16)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICAMed_TipsPay_Run ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 17)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICMTPTX ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 18)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Uncollected_FICAMed_TaxP ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 19)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Charged_Receipts ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 20)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Reported_Receipts ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 21)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.ALOCTIPS ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 22)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Federal_TipsPay_Run ELSE 0.0 END), 0.0), '   IF (@IN_TRXNumber = 23)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.EFICASSWH ELSE 0.0 END), 0.0), '   IF (@IN_TRXNumber = 24)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.EFICASS_Tax_On_Tips ELSE 0.0 END), 0.0), '   IF (@IN_TRXNumber = 25)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.EFICAMWPR ELSE 0.0 END), 0.0), '   IF (@IN_TRXNumber = 26)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.EFICAMed_Tax_On_Tips ELSE 0.0 END), 0.0), '   END   SET @SQLString = @SQLString + '0.0, 0.0 ,0.0 ,'''',0.0, 0.0, 0.0, '   IF (@IN_ReportType = 3)   SET @SQLString = @SQLString + ' 0.0, '  ELSE  BEGIN  IF (@IN_TRXNumber = 1) or  (@IN_TRXNumber = 9)  BEGIN  IF (@IN_TRXNumber = 1)   SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.GRWGPRN - '+ @CompanyID +'.dbo.UPR30100.Charged_Tips ELSE 0.0 END) '   IF  (@IN_TRXNumber = 9)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.NTWPYRN ELSE 0.0 END) '   SET @SQLString = @SQLString + ' - ISNULL((SELECT SUM(' + @CompanyID +'.dbo.UPR30300.PAYADVNC) FROM '+ @CompanyID +'.dbo.UPR30300, '+ @CompanyID +'.dbo.UPR30100, '+ @CompanyID +'.dbo.UPR00100  WHERE '  SET @SQLString = @SQLString + '(' + @CompanyID +'.dbo.UPR30300.EMPLOYID = ' + @CompanyID +'.dbo.UPR00100.EMPLOYID) AND '   SET @SQLString = @SQLString + '(' + @CompanyID +'.dbo.UPR30300.AUCTRLCD = ' + @CompanyID +'.dbo.UPR30100.AUCTRLCD)  AND '  SET @SQLString = @SQLString + '(' + @CompanyID +'.dbo.UPR30300.CHEKNMBR = ' + @CompanyID +'.dbo.UPR30100.CHEKNMBR)  AND '  SET @SQLString = @SQLString + '(' + @CompanyID +'.dbo.UPR30300.PYADNMBR = ' + @CompanyID +'.dbo.UPR30100.PYADNMBR) AND '   SET @SQLString = @SQLString +' (' + @CompanyID +'.dbo.UPR30300.PYRLRTYP = 1) AND '  IF @IN_RangeSelect= 1   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.EMPLOYID >= ''' + @IN_sEmpID + ''' AND '+ @CompanyID +'.dbo.UPR00100.EMPLOYID <= ''' + @IN_eEmpID + ''') AND '  IF @IN_RangeSelect= 2   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.EMPLCLAS >= ''' + @IN_sEmpClassID + ''' AND '+ @CompanyID +'.dbo.UPR00100.EMPLCLAS <= ''' + @IN_eEmpClassID + ''') AND '  IF @IN_RangeSelect= 3   SEt @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.DEPRTMNT >= ''' + @IN_sDept + ''' AND '+ @CompanyID +'.dbo.UPR00100.DEPRTMNT <= ''' + @IN_eDept + ''') AND '  IF @IN_RangeSelect= 4   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.JOBTITLE >= ''' + @IN_sPosition + ''' AND '+ @CompanyID +'.dbo.UPR00100.JOBTITLE <= ''' + @IN_ePosition + ''') AND '  SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''') AND '  SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR30100.YEAR1 >= ' + CAST(@IN_sYear AS CHAR(4)) + ' AND '+ @CompanyID +'.dbo.UPR30100.YEAR1 <= ' + CAST(@IN_eYear AS CHAR(4)) + ') AND '  IF  (@IN_TRXNumber = 1)  SET @SQLString = @SQLString +  ' NOT(' + @CompanyID +'.dbo.UPR30100.VOIDED = 1  AND ' +  @CompanyID +'.dbo.UPR30100.Voided_by_Void_Checks = 0) AND ' + @CompanyID +'.dbo.UPR30300.PAYADVNC > 0.00), 0.00) '  IF  (@IN_TRXNumber = 9)  SET @SQLString = @SQLString +  ' NOT(' + @CompanyID +'.dbo.UPR30100.VOIDED = 1  AND ' +  @CompanyID +'.dbo.UPR30100.Voided_by_Void_Checks = 0)), 0.00) '   SET @SQLString = @SQLString +  ', 0.0), '  END   IF (@IN_TRXNumber = 2)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FDWGPYRN ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 4)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FDWDGPRN ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 5)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICASSWP ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 6)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FCASWPR ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 7)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICAMWGP ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 8)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICAMWPR ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 10)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Charged_Tips ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 11)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Reported_Tips ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 12)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FDTXTIPS ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 13)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICASS_TipsPay_Run ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 14)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICSTPTX ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 15)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Uncollected_FICASS_TaxP ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 16)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICAMed_TipsPay_Run ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 17)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICMTPTX ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 18)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Uncollected_FICAMed_TaxP ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 19)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Charged_Receipts ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 20)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Reported_Receipts ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 21)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.ALOCTIPS ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 22)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Federal_TipsPay_Run ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 23)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.EFICASSWH ELSE 0.0 END), 0.0), '   IF (@IN_TRXNumber = 24)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.EFICASS_Tax_On_Tips ELSE 0.0 END), 0.0), '   IF (@IN_TRXNumber = 25)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.EFICAMWPR ELSE 0.0 END), 0.0), '   IF (@IN_TRXNumber = 26)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.EFICAMed_Tax_On_Tips ELSE 0.0 END), 0.0), '    END   SET @SQLString = @SQLString + ' 0.0, 0.0, 0.0, 0.0, '   IF (@IN_ReportType = 3)   SET @SQLString = @SQLString + ' 0.0, '  ELSE  BEGIN  IF (@IN_TRXNumber = 1) or  (@IN_TRXNumber = 9)  BEGIN  IF (@IN_TRXNumber = 1)   SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.GRWGPRN - '+ @CompanyID +'.dbo.UPR30100.Charged_Tips ELSE 0.0 END) '   IF  (@IN_TRXNumber = 9)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.NTWPYRN ELSE 0.0 END) '   SET @SQLString = @SQLString + ' - ISNULL((SELECT SUM(' + @CompanyID +'.dbo.UPR30300.PAYADVNC) FROM '+ @CompanyID +'.dbo.UPR30300, '+ @CompanyID +'.dbo.UPR30100, '+ @CompanyID +'.dbo.UPR00100  WHERE '  SET @SQLString = @SQLString + '(' + @CompanyID +'.dbo.UPR30300.EMPLOYID = ' + @CompanyID +'.dbo.UPR00100.EMPLOYID) AND '   SET @SQLString = @SQLString + '(' + @CompanyID +'.dbo.UPR30300.AUCTRLCD = ' + @CompanyID +'.dbo.UPR30100.AUCTRLCD)  AND '  SET @SQLString = @SQLString + '(' + @CompanyID +'.dbo.UPR30300.CHEKNMBR = ' + @CompanyID +'.dbo.UPR30100.CHEKNMBR)  AND '  SET @SQLString = @SQLString + '(' + @CompanyID +'.dbo.UPR30300.PYADNMBR = ' + @CompanyID +'.dbo.UPR30100.PYADNMBR) AND '   SET @SQLString = @SQLString +' (' + @CompanyID +'.dbo.UPR30300.PYRLRTYP = 1) AND '  IF @IN_RangeSelect= 1   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.EMPLOYID >= ''' + @IN_sEmpID + ''' AND '+ @CompanyID +'.dbo.UPR00100.EMPLOYID <= ''' + @IN_eEmpID + ''') AND '  IF @IN_RangeSelect= 2   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.EMPLCLAS >= ''' + @IN_sEmpClassID + ''' AND '+ @CompanyID +'.dbo.UPR00100.EMPLCLAS <= ''' + @IN_eEmpClassID + ''') AND '  IF @IN_RangeSelect= 3   SEt @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.DEPRTMNT >= ''' + @IN_sDept + ''' AND '+ @CompanyID +'.dbo.UPR00100.DEPRTMNT <= ''' + @IN_eDept + ''') AND '  IF @IN_RangeSelect= 4   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.JOBTITLE >= ''' + @IN_sPosition + ''' AND '+ @CompanyID +'.dbo.UPR00100.JOBTITLE <= ''' + @IN_ePosition + ''') AND '  SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''') AND '  SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR30100.YEAR1 >= ' + CAST(@IN_sYear AS CHAR(4)) + ' AND '+ @CompanyID +'.dbo.UPR30100.YEAR1 <= ' + CAST(@IN_eYear AS CHAR(4)) + ') AND '  IF  (@IN_TRXNumber = 1)  SET @SQLString = @SQLString +  ' NOT(' + @CompanyID +'.dbo.UPR30100.VOIDED = 1  AND ' +  @CompanyID +'.dbo.UPR30100.Voided_by_Void_Checks = 0) AND ' + @CompanyID +'.dbo.UPR30300.PAYADVNC > 0.00), 0.00) '  IF  (@IN_TRXNumber = 9)  SET @SQLString = @SQLString +  ' NOT(' + @CompanyID +'.dbo.UPR30100.VOIDED = 1  AND ' +  @CompanyID +'.dbo.UPR30100.Voided_by_Void_Checks = 0)), 0.00) '   SET @SQLString = @SQLString +  ', 0.0), '  END   IF (@IN_TRXNumber = 2)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FDWGPYRN ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 4)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FDWDGPRN ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 5)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICASSWP ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 6)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FCASWPR ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 7)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICAMWGP ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 8)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICAMWPR ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 10)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Charged_Tips ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 11)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Reported_Tips ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 12)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FDTXTIPS ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 13)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICASS_TipsPay_Run ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 14)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICSTPTX ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 15)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Uncollected_FICASS_TaxP ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 16)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICAMed_TipsPay_Run ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 17)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.FICMTPTX ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 18)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Uncollected_FICAMed_TaxP ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 19)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Charged_Receipts ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 20)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Reported_Receipts ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 21)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.ALOCTIPS ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 22)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.Federal_TipsPay_Run ELSE 0.0 END), 0.0), '  IF (@IN_TRXNumber = 23)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.EFICASSWH ELSE 0.0 END), 0.0), '   IF (@IN_TRXNumber = 24)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.EFICASS_Tax_On_Tips ELSE 0.0 END), 0.0), '   IF (@IN_TRXNumber = 25)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.EFICAMWPR ELSE 0.0 END), 0.0), '   IF (@IN_TRXNumber = 26)  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30100.EFICAMed_Tax_On_Tips ELSE 0.0 END), 0.0), '   END  SET @SQLString = @SQLString + ' 0.0, 0.0 '   SET @SQLString = @SQLString + 'FROM '+ @CompanyID +'.dbo.UPR00100 INNER JOIN '+ @CompanyID +'.dbo.UPR30100 '  SET @SQLString = @SQLString + '  ON '+ @CompanyID +'.dbo.UPR00100.EMPLOYID = '+ @CompanyID +'.dbo.UPR30100.EMPLOYID '  SET @SQLString = @SQLString + 'WHERE '   IF @IN_RangeSelect= 1   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.EMPLOYID >= ''' + @IN_sEmpID + ''' AND '+ @CompanyID +'.dbo.UPR00100.EMPLOYID <= ''' + @IN_eEmpID + ''') AND '   IF @IN_RangeSelect= 2   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.EMPLCLAS >= ''' + @IN_sEmpClassID + ''' AND '+ @CompanyID +'.dbo.UPR00100.EMPLCLAS <= ''' + @IN_eEmpClassID + ''') AND '   IF @IN_RangeSelect= 3   SEt @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.DEPRTMNT >= ''' + @IN_sDept + ''' AND '+ @CompanyID +'.dbo.UPR00100.DEPRTMNT <= ''' + @IN_eDept + ''') AND '   IF @IN_RangeSelect= 4   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.JOBTITLE >= ''' + @IN_sPosition + ''' AND '+ @CompanyID +'.dbo.UPR00100.JOBTITLE <= ''' + @IN_ePosition + ''') AND '   SEt @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR30100.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''') AND '  SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR30100.YEAR1 >= ' + CAST(@IN_sYear AS CHAR(4)) + ' AND '+ @CompanyID +'.dbo.UPR30100.YEAR1 <= ' + CAST(@IN_eYear AS CHAR(4)) + ') AND '  SET @SQLString = @SQLString + ''+ ' NOT(' + @CompanyID +'.dbo.UPR30100.VOIDED = 1  AND ' +  @CompanyID +'.dbo.UPR30100.Voided_by_Void_Checks = 0) '  END ELSE  BEGIN  SET @SQLString = 'INSERT INTO ' + @IN_TempTableName + '(CMPNYNAM,PYRLRTYP,PAYROLCD,EMPLOYID,LASTNAME,FRSTNAME,MIDLNAME,PYRLDSCR,MTDTXBWG,MNTHHRS,MNTHSWGS,MNTHSTTL,FLAG,MONTHTAX,QTDHOURS,QTDWAGES,QTDTXWGS,QTDTAX,QTDTOTAL,YTDHOURS,YTDWAGES,YTDTXWGS,YTDTAX,YTDTOTAL) '  SET @SQLString = @SQLString + ' SELECT ' + QUOTENAME(@IN_CompanyName,'''') + ',' + CAST(@IN_TRXNumber as char(2)) +' ,''' + @IN_CompanyID + ''','''' , '''' , '''' , '''' ,'''+ @IN_TRXDescription + ''','   IF (@IN_ReportType = 2)   SET @SQLString = @SQLString + ' 0.0, 0.0 ,0.0 ,0.0 ,'''',0.0, 0.0, 0.0, '  ELSE  BEGIN  SET @SQLString = @SQLString + 'ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30300.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @IN_sDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30300.UPRTRXAM ELSE 0.0 END), 0.0),0.0 ,0.0 ,0.0 ,'''',0.0, 0.0, 0.0, '  END   IF (@IN_ReportType = 3)   SET @SQLString = @SQLString + ' 0.0, 0.0, 0.0, 0.0, 0.0, '  ELSE  BEGIN  SET @SQLString = @SQLString + ' ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30300.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @QDate, 112) + ''' AND ''' + CONVERT(varchar(80), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30300.UPRTRXAM ELSE 0.0 END), 0.0),0.0 ,0.0 ,0.0  ,0.0 , '  END   IF (@IN_ReportType = 3)   SET @SQLString = @SQLString + ' 0.0, 0.0, 0.0 '  ELSE  BEGIN  SET @SQLString = @SQLString + ' ISNULL(SUM(CASE WHEN '+ @CompanyID +'.dbo.UPR30300.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''' THEN '+ @CompanyID +'.dbo.UPR30300.UPRTRXAM ELSE 0.0 END), 0.0), 0.0, 0.0 '  END   SET @SQLString = @SQLString + 'FROM '+ @CompanyID +'.dbo.UPR00100 INNER JOIN '+ @CompanyID +'.dbo.UPR00400 '  SET @SQLString = @SQLString + '  ON '+ @CompanyID +'.dbo.UPR00100.EMPLOYID = '+ @CompanyID +'.dbo.UPR00400.EMPLOYID LEFT OUTER JOIN '+ @CompanyID +'.dbo.UPR30300 '  SET @SQLString = @SQLString + '    ON '+ @CompanyID +'.dbo.UPR30300.EMPLOYID = '+ @CompanyID +'.dbo.UPR00400.EMPLOYID AND '+ @CompanyID +'.dbo.UPR30300.PAYROLCD = '+ @CompanyID +'.dbo.UPR00400.PAYRCORD '  SET @SQLString = @SQLString + 'WHERE PYRLRTYP = 1 AND '   IF @IN_RangeSelect= 1   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.EMPLOYID >= ''' + @IN_sEmpID + ''' AND '+ @CompanyID +'.dbo.UPR00100.EMPLOYID <= ''' + @IN_eEmpID + ''') AND '   IF @IN_RangeSelect= 2   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.EMPLCLAS >= ''' + @IN_sEmpClassID + ''' AND '+ @CompanyID +'.dbo.UPR00100.EMPLCLAS <= ''' + @IN_eEmpClassID + ''') AND '   IF @IN_RangeSelect= 3   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.DEPRTMNT >= ''' + @IN_sDept + ''' AND '+ @CompanyID +'.dbo.UPR00100.DEPRTMNT <= ''' + @IN_eDept + ''') AND '   IF @IN_RangeSelect= 4   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR00100.JOBTITLE >= ''' + @IN_sPosition + ''' AND '+ @CompanyID +'.dbo.UPR00100.JOBTITLE <= ''' + @IN_ePosition + ''') AND '   SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR30300.CHEKDATE BETWEEN ''' + CONVERT(varchar(8), @YDate, 112) + ''' AND ''' + CONVERT(varchar(8), @IN_eDate, 112) + ''') AND '  SET @SQLString = @SQLString + '('+ @CompanyID +'.dbo.UPR30300.YEAR1 >= ' + CAST(@IN_sYear AS CHAR(4)) + ' AND '+ @CompanyID +'.dbo.UPR30300.YEAR1 <= ' + CAST(@IN_eYear AS CHAR(4)) + ') AND '  SET @SQLString = @SQLString + ''+ @CompanyID +'.dbo.UPR30300.PAYADVNC = 0 AND '+ @CompanyID +'.dbo.UPR00400.PAYTYPE = 13 '  END  EXEC(@SQLString)  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprLoadTempXCmpyPayrollSummary] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[uprLoadTempXCmpyPayrollSummary] TO [rpt_payroll]
GO
GRANT EXECUTE ON  [dbo].[uprLoadTempXCmpyPayrollSummary] TO [rpt_power user]
GO
