SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE  procedure [dbo].[uprProcessDeductFedTaxShelteredXCmpy]  @Year smallint,  @sCheckDate datetime,  @eCheckDate datetime,  @InterCompID varchar(5),  @UserID varchar(15),  @DeductionAmount dec(19,5) output,  @O_iErrorState     int output  AS  if not exists (select * from tempdb..sysobjects where name = '##TempDeductFedTax') begin  CREATE TABLE dbo.##TempDeductFedTax  ( DEDUCTAMT dec(19, 5), USERID varchar(15)  ) end  DECLARE @SQLString  varchar(1000) DECLARE @CompanyID varchar (5)  SET @CompanyID = rtrim (@InterCompID)  SET  @SQLString = ' insert into ##TempDeductFedTax select sum(' + @CompanyID + '.dbo.UPR30300.UPRTRXAM), ''' + @UserID + '''  from ' + @CompanyID + '.dbo.UPR30300 join ' + @CompanyID + '.dbo.UPR00500 ' SET  @SQLString =  @SQLString +' on ' + @CompanyID + '.dbo.UPR30300.EMPLOYID = ' + @CompanyID + '.dbo.UPR00500.EMPLOYID ' SET  @SQLString =  @SQLString +' where ' + @CompanyID + '.dbo.UPR30300.PAYROLCD = ' + @CompanyID + '.dbo.UPR00500.DEDUCTON ' SET  @SQLString =  @SQLString +' and ' + @CompanyID + '.dbo.UPR30300.YEAR1= '+CAST( @Year as CHAR(4) ) +  ' ' SET  @SQLString =  @SQLString +'  and ' + @CompanyID + '.dbo.UPR30300.CHEKDATE between ''' + CONVERT(varchar(8), @sCheckDate, 112)  +''' and '''+ CONVERT(varchar(8), @eCheckDate, 112) +''' ' SET  @SQLString =  @SQLString +' and ' + @CompanyID + '.dbo.UPR30300.PYRLRTYP = 2 '  SET  @SQLString =  @SQLString +' and ' + @CompanyID + '.dbo.UPR00500.SFRFEDTX = 1 '  EXEC(@SQLString)  return(@@ERROR)   
GO
GRANT EXECUTE ON  [dbo].[uprProcessDeductFedTaxShelteredXCmpy] TO [DYNGRP]
GO