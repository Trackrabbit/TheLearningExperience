SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



create Procedure [dbo].[DE_DepositReceiptsHeader]

@depositnumber Char(20),
@RCPTNMBR Char(20),
@CHEKBKID Char(15)


as
Declare @RC int
Declare @ErrorState int
DECLARE @ErrorString varchar(255) 
DECLARE @ErrorMessage nvarchar(max) 

Execute @RC=taBRBankDepositsLine
@I_vdepositnumber=@depositnumber,
@I_vRCPTNMBR=@RCPTNMBR,
@I_vCHEKBKID=@CHEKBKID,




@O_iErrorState = @ErrorState OUTPUT,
@oErrString = @ErrorString OUTPUT 






IF @RC <> 0 
    BEGIN 
select @ErrorMessage=ErrorDesc from dynamics.dbo.taerrorcode where errorcode=@rc

       
        RAISERROR (@ErrorMessage, 18, 1) 

        RETURN 
    END




GO
GRANT EXECUTE ON  [dbo].[DE_DepositReceiptsHeader] TO [DYNGRP]
GO
