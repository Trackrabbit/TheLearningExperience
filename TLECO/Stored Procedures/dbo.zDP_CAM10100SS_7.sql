SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM10100SS_7] (@DATE1 datetime, @TIME1 datetime, @CAM_ControlAccountIndex int, @CAM_Amount_Total numeric(19,5)) AS  set nocount on SELECT TOP 1  DATE1, TIME1, CAM_ControlAccountIndex, CAM_Account_Num_String, CAM_ControlAcctDescr, VENDORID, ACTINDX, ACTNUMST, ACTDESCR, VCHRNMBR, APTVCHNM, DEBITAMT, CRDTAMNT, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10100 WHERE DATE1 = @DATE1 AND TIME1 = @TIME1 AND CAM_ControlAccountIndex = @CAM_ControlAccountIndex AND CAM_Amount_Total = @CAM_Amount_Total ORDER BY DATE1 ASC, TIME1 ASC, CAM_ControlAccountIndex ASC, CAM_Amount_Total ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM10100SS_7] TO [DYNGRP]
GO
