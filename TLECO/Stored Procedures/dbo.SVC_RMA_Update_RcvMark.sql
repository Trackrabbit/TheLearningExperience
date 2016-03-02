SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_RMA_Update_RcvMark]  as  delete from SVC00205 where SVC00205.SVC_Document_Type = 3  and SVC_Document_Number in (select RETDOCID  from SVC05015 where SVC00205.LNITMSEQ = SVC05015.LNSEQNBR  and SVC05015.MKDTOPST = 1 and SVC05015.RMA_Status = 99)   update SVC05015 set MKDTOPST = 0, RMA_Status = 0 where RMA_Status = 99  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_Update_RcvMark] TO [DYNGRP]
GO
