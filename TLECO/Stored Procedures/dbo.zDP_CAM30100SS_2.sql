SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM30100SS_2] (@DATE1 datetime, @TIME1 datetime, @CAM_ControlAccountIndex int, @ACTINDX int, @VENDORID char(15), @VCHRNMBR char(21)) AS  set nocount on SELECT TOP 1  DATE1, TIME1, CAM_ControlAccountIndex, CAM_Account_Num_String, CAM_ControlAcctDescr, VENDORID, ACTINDX, ACTNUMST, ACTDESCR, VCHRNMBR, APTVCHNM, DEBITAMT, CRDTAMNT, CAM_Amount_Total, DEX_ROW_ID FROM .CAM30100 WHERE DATE1 = @DATE1 AND TIME1 = @TIME1 AND CAM_ControlAccountIndex = @CAM_ControlAccountIndex AND ACTINDX = @ACTINDX AND VENDORID = @VENDORID AND VCHRNMBR = @VCHRNMBR ORDER BY DATE1 ASC, TIME1 ASC, CAM_ControlAccountIndex ASC, ACTINDX ASC, VENDORID ASC, VCHRNMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM30100SS_2] TO [DYNGRP]
GO
