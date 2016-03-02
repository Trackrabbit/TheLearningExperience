SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE Proc  [dbo].[DE_EXP_ECONN_CREATEORDERPAYMENT]
@I_O_vSopNumber char(21)
,@CUSTNMBR char(15)
,@DOCAMNT numeric(19,2)
,@DOCDATE DATETIME
,@SOPTYPE int = 3 --Default to ORDER
,@transId varchar(20)
,@lastCCN varchar(4)
,@expDate DateTime
,@CARDNAME varchar(15)
,@SEQNMBR int


As
DECLARE @abc char(15)='PES' + CONVERT(varchar(10), getdate(), 112)
DECLARE @DOCNUMBR char(21)='PYMT' + @I_O_vSopNumber
DECLARE @I_O_iErrorState int
DECLARE @I_oErrString varchar(255)

Execute taCreateSopPaymentInsertRecord
@I_vSOPNUMBE=@I_O_vSopNumber,
@I_vSOPTYPE=@SOPTYPE,
@I_vDOCDATE=@DOCDATE,
@I_vDOCAMNT=@DOCAMNT, --total kids
@I_vCHEKNMBR=@I_O_vSopNumber,
@I_VDOCNUMBR=@DOCNUMBR,	
@I_VCUSTNMBR=@CUSTNMBR,
@I_vSEQNUMBR=@SEQNMBR,
@I_vPYMTTYPE=6,
@I_vAUTHCODE=@transId,
@I_vRCTNCCRD=@lastCCN,
@I_vEXPNDATE=@expDate,
@I_vCARDNAME=@CARDNAME,
@O_iErrorState = @I_O_iErrorState OUTPUT,
@oErrString = @I_oErrString OUTPUT  
GO
GRANT EXECUTE ON  [dbo].[DE_EXP_ECONN_CREATEORDERPAYMENT] TO [DYNGRP]
GO
