SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE Procedure [dbo].[DE_GLInsertDetail]

@ACTNUMST Char(20),
@BACHNUMB Char(15),
@DEBITAMT Numeric(19,5),
@CRDTAMNT Numeric(19,5),
@JRNENTRY int,
@Descr Char(30)

as
Declare @RC int
Declare @ErrorState int
DECLARE @ErrorString varchar(255) 
DECLARE @ErrorMessage nvarchar(max) 

Execute @RC=taGLTransactionLineInsert
@I_vACTNUMST=@ACTNUMST,
@I_vBACHNUMB=@BACHNUMB,
@I_vDEBITAMT=@DEBITAMT,
@I_vCRDTAMNT=@CRDTAMNT,
@I_vJRNENTRY=@JRNENTRY,
@I_vDSCRIPTN=@Descr	




,@O_iErrorState = @ErrorState OUTPUT,
@oErrString = @ErrorString OUTPUT 

Declare @DEXROW int
set @DEXROW=(Select MAX(isnull(t.DEX_ROW_ID,0)) from GL10001 t join GL00105 a on t.ACTINDX=a.ACTINDX where a.ACTNUMST=@ACTNUMST and t.JRNENTRY=@JRNENTRY and t.DEBITAMT=@DEBITAMT and t.CRDTAMNT=@CRDTAMNT)
select @DEXROW




IF @RC <> 0 
    BEGIN 
select @ErrorMessage=ErrorDesc from dynamics.dbo.taerrorcode where errorcode=@rc

       
        RAISERROR (@ErrorMessage, 18, 1) 

        RETURN 
    END



GO
GRANT EXECUTE ON  [dbo].[DE_GLInsertDetail] TO [DYNGRP]
GO
