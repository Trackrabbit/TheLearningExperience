SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DE_EXP_ECONN_CREATEORDERDETAIL]

@I_O_vSopNumber char(21)
,@CUSTNMBR char(15)
,@UNITPRCE numeric(19,5)
,@XTNDPRCE numeric(19,5)
,@ITEMDESC char(100)
,@DOCDATE DATETIME
,@I_O_iErrorState int OUTPUT
,@I_oErrString varchar(255) OUTPUT
,@SEQNMBR int
,@gpSiteId varchar(10)=''
,@SOPTYPE int = 3 --Default to ORDER

AS
--DECLARE @I_O_iErrorState int 
--DECLARE @I_oErrString varchar(255) 
--declare @SEQNMBR int
--Select @SEQNMBR=Count(*)*16384 from sop10200 where SOPNUMBE=@I_O_vSopNumber and SOPTYPE=@SOPTYPE
EXECUTE  taSopLineIvcInsert 
   @I_vSOPTYPE=@SOPTYPE
  ,@I_vSOPNUMBE=@I_O_vSopNumber
  ,@I_vCUSTNMBR=@CUSTNMBR
  ,@I_vDOCDATE=@DOCDATE
  ,@I_vITEMNMBR= 'PreEnrollment Charge'
  ,@I_vUNITPRCE=@UNITPRCE ---
  ,@I_vXTNDPRCE=@XTNDPRCE  ---includes tax
  ,@I_vQUANTITY=1
  ,@I_vITEMDESC=@ITEMDESC ---child name
  ,@I_vUpdateIfExists=1
  ,@I_vUOFM='Each'
  ,@I_vNONINVEN=1
  ,@I_vLOCNCODE=@gpSiteId
  ,@I_vLNITMSEQ=@SEQNMBR
  ,@O_iErrorState=@I_O_iErrorState OUTPUT
  ,@oErrString=@I_oErrString OUTPUT
GO
GRANT EXECUTE ON  [dbo].[DE_EXP_ECONN_CREATEORDERDETAIL] TO [DYNGRP]
GO
