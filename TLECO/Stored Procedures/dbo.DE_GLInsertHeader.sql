SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE Procedure [dbo].[DE_GLInsertHeader]

@JE Char(20),
@BACHNUMB Char(15),
@REFRENCE Char(40),
@TRXDATE Datetime

as
Declare @RC int
Declare @ErrorState int
DECLARE @ErrorString varchar(255) 
DECLARE @ErrorMessage nvarchar(max) 

Execute @RC=taGLTransactionHeaderInsert
@I_vJRNENTRY=@JE,
@I_vBACHNUMB=@BACHNUMB,
@I_vTRXTYPE=0,
@I_vREFRENCE=@REFRENCE,
@I_vTRXDATE=@TRXDATE



,@O_iErrorState = @ErrorState OUTPUT,
@oErrString = @ErrorString OUTPUT 





IF @RC <> 0 
    BEGIN 
select @ErrorMessage=ErrorDesc from dynamics.dbo.taerrorcode where errorcode=@rc

       
        RAISERROR (@ErrorMessage, 18, 1) 

        RETURN 
    END



GO
GRANT EXECUTE ON  [dbo].[DE_GLInsertHeader] TO [DYNGRP]
GO
