SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Get_Next_Transfer_Line] (@H_ORDDOCID as char(15),  @NextLine as integer output)  AS select @NextLine =  isnull(max(LNITMSEQ),0) + 16384  from SVC00701 where ORDDOCID = @H_ORDDOCID  return 0    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Next_Transfer_Line] TO [DYNGRP]
GO
