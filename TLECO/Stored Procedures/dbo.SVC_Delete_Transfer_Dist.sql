SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Delete_Transfer_Dist]  @DocID varchar(15) ,  @Line integer as  if @Line = 0   delete from SVC00731 where ORDDOCID = @DocID  else  delete from SVC00731 where ORDDOCID = @DocID and LNITMSEQ = @Line    
GO
GRANT EXECUTE ON  [dbo].[SVC_Delete_Transfer_Dist] TO [DYNGRP]
GO
