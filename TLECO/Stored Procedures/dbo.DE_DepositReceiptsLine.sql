SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


--
--select CHEKBKID,RCPTNMBR,RCPTAMT,Receiptdate from CM20300 where DEPOSITED=0 and CHEKBKID<>''
--select * from CM20300 where DEPOSITED=0 and CHEKBKID<>'' and DepositNumber=''
--delete  cm10101

Create Procedure [dbo].[DE_DepositReceiptsLine]

@depositnumber Char(20),
@RCPTNMBR Char(20),
@CHEKBKID Char(15),
@DepAmt Numeric(19,2),
@DepDate datetime

as
Declare @RC int
Declare @ErrorState int
DECLARE @ErrorString varchar(255) 
DECLARE @ErrorMessage nvarchar(max) 


Execute @RC=taBRBankDepositsLine
@I_vdepositnumber=@depositnumber,
@I_vRCPTNMBR=@RCPTNMBR,
@I_vCHEKBKID=@CHEKBKID,
@I_VrcpType=1,
@I_vDepDate=@DepDate,
--@I_VDEPTYPE=2,



@O_iErrorState = @ErrorState OUTPUT,
@oErrString = @ErrorString OUTPUT 

Execute @RC=taBRBankDepositsHeader
@I_vOption=1,
@I_VDEPTYPE=1,
@I_vdepositnumber=@depositnumber,
@I_vCHEKBKID=@CHEKBKID,
@I_vDSCRIPTN='Dynamics Expert Integration Deposit',
@I_vDepAmt=@DepAmt,
@I_vCheckTotal=@DepAmt,
@I_Vcheckcount=1,
@I_vDepDate=@DepDate,
@O_iErrorState = @ErrorState OUTPUT,
@oErrString = @ErrorString OUTPUT 

Execute @RC=taBRPostBankDeposits
@I_vdepositnumber=@depositnumber,
@I_vCHEKBKID=@CHEKBKID,
@I_vRequesterTrx=0,
@O_iErrorState = @ErrorState OUTPUT,
@oErrString = @ErrorString OUTPUT 


IF @RC <> 0 
    BEGIN 
select @ErrorMessage=ErrorDesc from dynamics.dbo.taerrorcode where errorcode=@rc

       
        RAISERROR (@ErrorMessage, 18, 1) 

        RETURN 
    END




GO
GRANT EXECUTE ON  [dbo].[DE_DepositReceiptsLine] TO [DYNGRP]
GO
