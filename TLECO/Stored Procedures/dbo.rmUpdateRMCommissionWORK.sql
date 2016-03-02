SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create proc [dbo].[rmUpdateRMCommissionWORK]  @sStartRangeRMDocumentTypeAll smallint =NULL,  @cStartRangeDocumentNumber char(21) =NULL,  @iStartRangeSequenceNumber integer  =NULL,  @sEndRangeRMDocumentTypeAll smallint =NULL,  @cEndRangeDocumentNumber char(21) =NULL,  @iEndRangeSequenceNumber integer  =NULL,  @tSetValuePosted tinyint  =NULL,  @cSetValueTRXSource char(13) =NULL,  @iErrorState     int  =NULL output as  set nocount on  select @iErrorState = 0  if  @sStartRangeRMDocumentTypeAll is NULL or  @cStartRangeDocumentNumber is NULL or  @iStartRangeSequenceNumber is NULL or  @sEndRangeRMDocumentTypeAll is NULL or  @cEndRangeDocumentNumber is NULL or  @iEndRangeSequenceNumber is NULL or  @tSetValuePosted is NULL or  @cSetValueTRXSource is NULL begin  select @iErrorState = 21078  return end   update  RM10501 set   POSTED    = @tSetValuePosted,  TRXSORCE   = @cSetValueTRXSource where  RMDTYPAL = @sStartRangeRMDocumentTypeAll  and DOCNUMBR = @cStartRangeDocumentNumber and SEQNUMBR  between @iStartRangeSequenceNumber and @iEndRangeSequenceNumber  return(@@error)   
GO
GRANT EXECUTE ON  [dbo].[rmUpdateRMCommissionWORK] TO [DYNGRP]
GO
