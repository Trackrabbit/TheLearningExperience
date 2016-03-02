SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create      procedure  [dbo].[aagGetAuditTrailCode]  @I_cPrefix          char(5),  @O_cAuditTrailCode  char(13) = NULL  output as begin  DECLARE  @iFinancial   smallint,  @cFiller               char(8),  @cDBName           char(5),  @cAuditTrailCode   char(13),  @iStatus               int,  @iNumber               int,  @BCHEXIST smallint  Select @iFinancial = 2   Select @BCHEXIST = BCHEXIST from SY02300 where SERIES = 2 and TRXSOURC LIKE 'Reconcile Bank Statement%'   if @BCHEXIST = 0  begin  set @O_cAuditTrailCode = @I_cPrefix   return  end   else if @BCHEXIST = 1   begin   select @iNumber = NTRXSNUM   from  SY01000  where  SERIES  = @iFinancial  and     TRXSRCPX = @I_cPrefix  select @cDBName = db_name()  exec @iStatus = DYNAMICS..smGetMsgString  15580,   @cDBName,  @cFiller output  select @cAuditTrailCode = @I_cPrefix + stuff(  @cFiller,  8 - len(rtrim(ltrim(convert(char(13),@iNumber)))) + 1,  len(rtrim(ltrim(convert(char(13),@iNumber)))),  rtrim(convert(char(13),@iNumber)))  SELECT @O_cAuditTrailCode = @cAuditTrailCode  RETURN  end  end    
GO
GRANT EXECUTE ON  [dbo].[aagGetAuditTrailCode] TO [DYNGRP]
GO
