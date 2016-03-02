SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sopGetProcessHoldID]  @I_cSOPNumber char(21),  @I_tSOPTYPE tinyint,  @O_cProcessHoldID char(15)        = NULL  output  AS  declare @HoldID  char(15),  @HoldCount  int,  @iStatus int,  @iError int,  @cDBName char(5)  select @O_cProcessHoldID = '',  @iError  = NULL,  @iStatus = NULL,  @cDBName = db_name()  if @I_tSOPTYPE is NULL or @I_cSOPNumber = ''  begin  return 21036 end  select @HoldCount = count(PRCHLDID) from SOP10104  where SOPNUMBE = @I_cSOPNumber  and SOPTYPE = @I_tSOPTYPE  and DELETE1 = 0 and TRXSORCE = ''  if @HoldCount > 1 begin  exec @iStatus = DYNAMICS..smGetMsgString  10008,   @cDBName,  @O_cProcessHoldID output,  @iError output  return @iError end  if @HoldCount = 1 begin   select @O_cProcessHoldID = PRCHLDID   from SOP10104  where SOPNUMBE = @I_cSOPNumber  and SOPTYPE = @I_tSOPTYPE  and DELETE1 = 0 and TRXSORCE = '' end return     
GO
GRANT EXECUTE ON  [dbo].[sopGetProcessHoldID] TO [DYNGRP]
GO
