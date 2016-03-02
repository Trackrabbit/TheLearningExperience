SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DE_CREATERETURNHEADER]
 @SOPNUMBER char(21)
,@CUSTNMBR char(15)
,@CUSTNAME char(60)
,@DOCDATE DATETIME
,@I_O_iErrorState int OUTPUT
,@I_oErrString varchar(255) OUTPUT
AS
DECLARE @abc char(15)='PESRET' + CONVERT(varchar(10), getdate(), 112)

BEGIN
EXECUTE  taSopHdrIvcInsert 
   @I_vSOPTYPE=4
  ,@I_vDOCID='PREENROLLRET' 
  ,@I_vSOPNUMBE=@SOPNUMBER
  ,@I_vCUSTNMBR=@CUSTNMBR
  ,@I_vCUSTNAME=@CUSTNAME
  ,@I_vBACHNUMB= @abc
  --,@I_vUpdateExisting=0
  ,@I_vDOCDATE=@DOCDATE
  ,@O_iErrorState=@I_O_iErrorState OUTPUT
  ,@oErrString=@I_oErrString OUTPUT
END
GO
GRANT EXECUTE ON  [dbo].[DE_CREATERETURNHEADER] TO [DYNGRP]
GO
