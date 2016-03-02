SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create proc [dbo].[rmUpdateRMTaxWORK]  @sStartRangeRMDocumentTypeAll smallint =NULL,  @cStartRangeDocumentNumber char(21) =NULL,  @cStartRangeTRXSource char(13) =NULL,  @cStartRangeTaxDetailID char(15) =NULL,  @sEndRangeRMDocumentTypeAll smallint =NULL,  @cEndRangeDocumentNumber char(21) =NULL,  @cEndRangeTRXSource char(13) =NULL,  @cEndRangeTaxDetailID char(15) =NULL,  @tSetValuePosted tinyint  =NULL,  @cSetValueTRXSource char(13) =NULL,  @iErrorState     int  =NULL output as  set nocount on  select @iErrorState = 0  if  @sStartRangeRMDocumentTypeAll is NULL or  @cStartRangeDocumentNumber is NULL or  @cStartRangeTRXSource is NULL or  @cStartRangeTaxDetailID is NULL or  @sEndRangeRMDocumentTypeAll is NULL or  @cEndRangeDocumentNumber is NULL or  @cEndRangeTRXSource is NULL or  @cEndRangeTaxDetailID is NULL or  @tSetValuePosted is NULL or  @cSetValueTRXSource is NULL begin  select @iErrorState = 21079  return end   update  RM10601 set   POSTED    = @tSetValuePosted,  TRXSORCE   = @cSetValueTRXSource where  RMDTYPAL = @sStartRangeRMDocumentTypeAll  and DOCNUMBR = @cStartRangeDocumentNumber and TRXSORCE  = @cStartRangeTRXSource  and TAXDTLID  between @cStartRangeTaxDetailID and @cEndRangeTaxDetailID  return(@@error)   
GO
GRANT EXECUTE ON  [dbo].[rmUpdateRMTaxWORK] TO [DYNGRP]
GO
