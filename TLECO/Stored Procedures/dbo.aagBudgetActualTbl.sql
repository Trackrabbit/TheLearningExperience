SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[aagBudgetActualTbl]  @aaBudgetPeriodtmp nvarchar(30)  as begin  declare @NETCHNG int,  @USERID   CHAR(15),  @WINTYPE   SMALLINT,  @CMPANYID INTEGER   SELECT @USERID  = SYSTEM_USER  SELECT @WINTYPE = 2  SELECT @CMPANYID = dbo.aagGetCompanyID()  select @NETCHNG=NETCHNG   from AAG00906   WHERE USERID = @USERID AND   WINTYPE = @WINTYPE AND   CMPANYID = @CMPANYID   exec('delete from '+ @aaBudgetPeriodtmp)  exec('insert into '+ @aaBudgetPeriodtmp +' (YEAR1,PERIODDT,aaFiscalPeriod,PERDBLNC,Actual_Amount)   select YEAR1,PERIODDT,aaFiscalPeriod,PERDBLNC,Actual_Amount   from  aaActualBudgetInquiryView')   if @NETCHNG=0  BEGIN  exec('update '+ @aaBudgetPeriodtmp +'   set Actual_Amount =   (select sum(Actual_Amount)   from '+ @aaBudgetPeriodtmp +' B   where B.aaFiscalPeriod <= A.aaFiscalPeriod AND   B.PERIODDT <= A.PERIODDT)   from ' + @aaBudgetPeriodtmp + '  A')  END end    
GO
GRANT EXECUTE ON  [dbo].[aagBudgetActualTbl] TO [DYNGRP]
GO
