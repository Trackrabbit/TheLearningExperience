SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[DE_CREATERETURNDETAIL]
@SOPNUMBER char(21)
,@CUSTNMBR char(15)
,@UNITPRCE numeric(19,5)
,@XTNDPRCE numeric(19,5)
,@ITEMDESC char(100)
,@DOCDATE DATETIME
,@SEQNMBR int
,@I_O_iErrorState int  OUTPUT
,@I_oErrString varchar(255)  OUTPUT

AS


EXECUTE  taSopLineIvcInsert 
   @I_vSOPTYPE=4
  ,@I_vSOPNUMBE=@SOPNUMBER
  ,@I_vCUSTNMBR=@CUSTNMBR
  ,@I_vDOCDATE=@DOCDATE
  ,@I_vITEMNMBR= 'PreEnrollment Refund'
  ,@I_vUNITPRCE=@UNITPRCE ---
  ,@I_vXTNDPRCE=@XTNDPRCE  ---includes tax
  ,@I_vQUANTITY=1
  ,@I_vITEMDESC=@ITEMDESC ---child name
  ,@I_vUpdateIfExists=1
  ,@I_vUOFM='Each'
  ,@I_vNONINVEN=1
  ,@I_vLNITMSEQ=@SEQNMBR
  ,@O_iErrorState=@I_O_iErrorState OUTPUT
  ,@oErrString=@I_oErrString OUTPUT
GO
GRANT EXECUTE ON  [dbo].[DE_CREATERETURNDETAIL] TO [DYNGRP]
GO
