SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[sopGetHoldProcessID] (  @I_cSOPNumber char(21),  @I_tSOPTYPE tinyint,  @I_nLanguageID smallint = 0 ) RETURNS char(15) AS BEGIN declare @HoldID  char(15),  @HoldCount  int,  @iStatus int,  @iError int,  @cDBName char(5),  @O_cProcessHoldID char(15)  select  @iError  = NULL,  @iStatus = NULL,  @cDBName = db_name()  if @I_tSOPTYPE is NULL or @I_cSOPNumber = ''  begin  return str(21036) end  select @HoldCount = count(PRCHLDID) from SOP10104  where SOPNUMBE = @I_cSOPNumber  and SOPTYPE = @I_tSOPTYPE  and DELETE1 = 0 and TRXSORCE = ''  if @HoldCount > 1 begin  select @O_cProcessHoldID = rtrim((select SQL_MSG from DYNAMICS.dbo.MESSAGES where Language_ID = @I_nLanguageID and MSGNUM = 10008)) end  if @HoldCount = 1 begin   select @O_cProcessHoldID = PRCHLDID   from SOP10104  where SOPNUMBE = @I_cSOPNumber  and SOPTYPE = @I_tSOPTYPE  and DELETE1 = 0 and TRXSORCE = '' end return @O_cProcessHoldID END   
GO
GRANT EXECUTE ON  [dbo].[sopGetHoldProcessID] TO [DYNGRP]
GO
