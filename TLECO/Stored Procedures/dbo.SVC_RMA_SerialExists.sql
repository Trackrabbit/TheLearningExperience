SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_RMA_SerialExists] ( @RecType smallint,  @RMANumber char(15), @Line numeric(19,5), @CMPNTSEQ int = 0 )  as declare @numrows int if @Line = 0  select @numrows = isnull(sum(SERLTQTY),0) from SVC05255 where RETDOCID = @RMANumber and Return_Record_Type = @RecType  else  select @numrows =isnull(sum(SERLTQTY),0) from SVC05255 where RETDOCID = @RMANumber and Return_Record_Type = @RecType and LNSEQNBR = @Line and CMPNTSEQ = @CMPNTSEQ  return @numrows    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_SerialExists] TO [DYNGRP]
GO
