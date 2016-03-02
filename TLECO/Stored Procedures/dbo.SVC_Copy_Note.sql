SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Copy_Note](@NOTEINDEX numeric(19,5),@NEWNOTEINDEX numeric(19,5) OUTPUT)  As DECLARE @oldnoteptr varbinary(16) DECLARE @newnoteptr varbinary(16)  BEGIN TRANSACTION exec SVC_Get_Next_Note_Index @NEWNOTEINDEX output  if exists(select * from SY03900 where NOTEINDX = @NOTEINDEX)  insert into SY03900 select @NEWNOTEINDEX,  CONVERT(char(12),GETDATE(),102) + ' 00:00',   '01/01/1900 ' + CONVERT(char(12),GETDATE(),108),  TXTFIELD from SY03900 where NOTEINDX = @NOTEINDEX  COMMIT TRANSACTION return(0)    
GO
GRANT EXECUTE ON  [dbo].[SVC_Copy_Note] TO [DYNGRP]
GO
