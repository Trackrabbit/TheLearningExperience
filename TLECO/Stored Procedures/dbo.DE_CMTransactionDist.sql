SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE Procedure [dbo].[DE_CMTransactionDist]

@Option int,
@ACTNUMST char(25),
@DEBITAMT numeric(19,5),
@CRDTAMNT numeric(19,5),
@DistRef char(30)



as
Declare @RC int
Declare @ErrorState int
DECLARE @ErrorString varchar(255) 
DECLARE @ErrorMessage nvarchar(max) 

Execute @RC=taBRBankTransactionDist
@I_vOption=@Option,
@I_vACTNUMST=@ACTNUMST,
@I_vDEBITAMT=@DEBITAMT,
@I_vCRDTAMNT=@CRDTAMNT,
@I_vDistRef=@DistRef





,@O_iErrorState = @ErrorState OUTPUT,
@oErrString = @ErrorString OUTPUT 





IF @RC <> 0 
    BEGIN 
select @ErrorMessage=ErrorDesc from dynamics.dbo.taerrorcode where errorcode=@rc

       
        RAISERROR (@ErrorMessage, 18, 1) 

        RETURN 
    END




GO
GRANT EXECUTE ON  [dbo].[DE_CMTransactionDist] TO [DYNGRP]
GO
