SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[glCLGlTrxHeaderWorkVerifyLedger]  @I_cUser_ID char(15)  = NULL,  @I_GlTrxHdrWorkName char(255)  = NULL,  @I_GlYtdTrxOpenName char(255)  = NULL,  @I_GlAccountTrxHistName char(255)  = NULL,   @I_ErrorMsg char(255)  = NULL,  @IO_UseReportingLedgers binary(4)  = NULL OUTPUT as   DECLARE   @BaseLedger int,  @IfrsLedger int,  @LocalLedger int  if (  @I_cUser_ID is NULL or  @I_GlTrxHdrWorkName is NULL or  @I_GlYtdTrxOpenName is NULL or  @I_GlAccountTrxHistName is NULL or  @I_ErrorMsg is NULL or  @IO_UseReportingLedgers is NULL   )  begin  return end  CREATE TABLE #Errors(  [USERID] [char](15) NOT NULL,  [INDXLONG] [int] IDENTITY(1,1) NOT NULL,  [FILENAME] [char](45) NOT NULL,  [ERMSGTXT] [char](255) NOT NULL)  select @BaseLedger  = power (2,24), @IfrsLedger  = power (2,25), @LocalLedger = power (2,26)  insert into  #Errors  select  @I_cUser_ID,  @I_GlTrxHdrWorkName,  REPLACE(@I_ErrorMsg, '%1', ltrim(rtrim(str(Invalid.JRNENTRY))))  from (select distinct GL10000.JRNENTRY from GL10000  where Ledger_ID not in (1,2,3))Invalid Update GL10000 set Ledger_ID = 1 where Ledger_ID not in (1,2,3)  insert into  #Errors  select  @I_cUser_ID,  @I_GlYtdTrxOpenName,  REPLACE(@I_ErrorMsg, '%1', ltrim(rtrim(str(Invalid.JRNENTRY))))  from (select distinct GL20000.JRNENTRY from GL20000  where Ledger_ID not in (1,2,3))Invalid Update GL20000 set Ledger_ID = 1 where Ledger_ID not in (1,2,3)  insert into  #Errors  select  @I_cUser_ID,  @I_GlAccountTrxHistName,  REPLACE(@I_ErrorMsg, '%1', ltrim(rtrim(str(Invalid.JRNENTRY))))  from (select distinct GL30000.JRNENTRY from GL30000  where Ledger_ID not in (1,2,3))Invalid Update GL30000 set Ledger_ID = 1 where Ledger_ID not in (1,2,3)  insert into  SY03400  select  USERID,  INDXLONG,  FILENAME,  ERMSGTXT,  '' as ERMSGTXT2  from #Errors  select @IO_UseReportingLedgers = (@IO_UseReportingLedgers | @BaseLedger)  if (select COUNT(*)   from (  select Ledger_ID   from GL10000 where Ledger_ID in (2, 3)  union   select Ledger_ID   from GL20000 where Ledger_ID in (2, 3)  union   select Ledger_ID   from GL30000 where Ledger_ID in (2, 3)) Ledgers  ) > 0 begin  select @IO_UseReportingLedgers = (@IO_UseReportingLedgers | @IfrsLedger)  select @IO_UseReportingLedgers = (@IO_UseReportingLedgers | @LocalLedger) end    
GO
GRANT EXECUTE ON  [dbo].[glCLGlTrxHeaderWorkVerifyLedger] TO [DYNGRP]
GO