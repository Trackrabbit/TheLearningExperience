SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DE_EXP_ECONN_CREATEORDERHEADER]
@I_O_vSopNumber char(21)
,@CUSTNMBR char(15)
,@CUSTNAME char(60)
,@DOCDATE DATETIME
,@SOPTYPE int = 3 --Default to ORDER
,@DOCID char(15) = 'PREENROLL' --Default to PREENROLL
,@bachType char(3)='PES'
,@gpSiteId varchar(10)=''
,@I_O_iErrorState int OUTPUT
,@I_oErrString varchar(255) OUTPUT
AS
DECLARE @abc char(15)
SET @abc=@bachType + CONVERT(varchar(10), getdate(), 112)

BEGIN
EXECUTE  taSopHdrIvcInsert 
   @I_vSOPTYPE=@SOPTYPE
  ,@I_vDOCID=@DOCID
  ,@I_vSOPNUMBE=@I_O_vSopNumber
  ,@I_vCUSTNMBR=@CUSTNMBR
  ,@I_vCUSTNAME=@CUSTNAME
  ,@I_vBACHNUMB= @abc
  ,@I_vLOCNCODE = @gpSiteId
  --,@I_vUpdateExisting=0
  ,@I_vDOCDATE=@DOCDATE
  ,@O_iErrorState=@I_O_iErrorState OUTPUT
  ,@oErrString=@I_oErrString OUTPUT
END
GO
GRANT EXECUTE ON  [dbo].[DE_EXP_ECONN_CREATEORDERHEADER] TO [DYNGRP]
GO
