SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Move_RMA_Dist_To_History]  @RMANumber as char(15),  @RecordType as smallint,  @LineNumber as numeric(19,5) As update SVC05030 set Return_Record_Type = 2  where RETDOCID = @RMANumber and Return_Record_Type=@RecordType and  LNSEQNBR = @LineNumber  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Move_RMA_Dist_To_History] TO [DYNGRP]
GO
