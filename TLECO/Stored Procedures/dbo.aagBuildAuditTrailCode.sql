SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE    procedure [dbo].[aagBuildAuditTrailCode]  @I_cPrefix                    char(5),  @O_cAuditTrailCode               char(13)        = NULL  output,  @O_iErrorState                   smallint        = NULL  output  as DECLARE  @iFinancial      smallint,  @cFiller              char(8),  @cDBName            char(5),  @cAuditTrailCode     char(13),  @iStatus              int,  @iNumber              int   Select @iFinancial = 2   update  SY01000  set     NTRXSNUM = NTRXSNUM + 1  where  SERIES  = @iFinancial  and     TRXSRCPX = @I_cPrefix   if @@rowcount <> 1  begin  Select @O_iErrorState = 1  return  end    select   @iNumber = NTRXSNUM - 1  from  SY01000  where  SERIES  = @iFinancial  and     TRXSRCPX = @I_cPrefix   select @cDBName = db_name()   exec @iStatus = DYNAMICS..smGetMsgString  15580,   @cDBName,  @cFiller output,  @O_iErrorState  output   select @cAuditTrailCode = @I_cPrefix + stuff(  @cFiller,  8 - len(rtrim(ltrim(convert(char(13),@iNumber)))) + 1,  len(rtrim(ltrim(convert(char(13),@iNumber)))),  rtrim(convert(char(13),@iNumber)))   SELECT @O_cAuditTrailCode = @cAuditTrailCode  RETURN    
GO
GRANT EXECUTE ON  [dbo].[aagBuildAuditTrailCode] TO [DYNGRP]
GO
