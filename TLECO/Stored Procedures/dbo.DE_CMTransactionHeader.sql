SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO




CREATE Procedure [dbo].[DE_CMTransactionHeader]

@CARDNAME Char (15),
@CHEKBKID Char(15),
@CMTrxNum Char(20),
@CMTrxType int,
@CURNCYID Char(15),
@DistRef Char(30),
@DSCRIPTN char(30),
@GLPOSTDT datetime,
@Option int,
@paidtorcvdfrom char(30),
@RcpType int,
@TRXAMNT Numeric(19,5),
@TRXDATE datetime,
@USERID Char(15)


as
Declare @RC int
Declare @ErrorState int
DECLARE @ErrorString varchar(255) 
DECLARE @ErrorMessage nvarchar(max) 

Execute @RC=taBRBankTransactionHeader
@I_vCARDNAME=@CARDNAME,
@I_vCHEKBKID=@CHEKBKID,
@I_vCMTrxNum=@CMTrxNum,
@I_vCMTrxType=@CMTrxType,
@I_vCURNCYID=@CURNCYID,
@I_vDistRef=@DistRef,
@I_vDSCRIPTN=@DSCRIPTN,
@I_vGLPOSTDT=@GLPOSTDT,
@I_vOption=@Option,
@I_vpaidtorcvdfrom=@paidtorcvdfrom,
@I_vRcpType=@RcpType,
@I_vTRXAMNT=@TRXAMNT,
@I_vTRXDATE=@TRXDATE,
@I_vUSERID=@USERID




,@O_iErrorState = @ErrorState OUTPUT,
@oErrString = @ErrorString OUTPUT 





IF @RC <> 0 
    BEGIN 
select @ErrorMessage=ErrorDesc from dynamics.dbo.taerrorcode where errorcode=@rc

       
        RAISERROR (@ErrorMessage, 18, 1) 

        RETURN 
    END




GO
GRANT EXECUTE ON  [dbo].[DE_CMTransactionHeader] TO [DYNGRP]
GO
