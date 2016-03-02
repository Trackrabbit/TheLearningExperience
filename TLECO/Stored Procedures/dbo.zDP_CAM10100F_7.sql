SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM10100F_7] (@DATE1_RS datetime, @TIME1_RS datetime, @CAM_ControlAccountIndex_RS int, @CAM_Amount_Total_RS numeric(19,5), @DATE1_RE datetime, @TIME1_RE datetime, @CAM_ControlAccountIndex_RE int, @CAM_Amount_Total_RE numeric(19,5)) AS  set nocount on IF @DATE1_RS IS NULL BEGIN SELECT TOP 25  DATE1, TIME1, CAM_ControlAccountIndex, CAM_Account_Num_String, CAM_ControlAcctDescr, VENDORID, ACTINDX, ACTNUMST, ACTDESCR, VCHRNMBR, APTVCHNM, DEBITAMT, CRDTAMNT, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10100 ORDER BY DATE1 ASC, TIME1 ASC, CAM_ControlAccountIndex ASC, CAM_Amount_Total ASC, DEX_ROW_ID ASC END ELSE IF @DATE1_RS = @DATE1_RE BEGIN SELECT TOP 25  DATE1, TIME1, CAM_ControlAccountIndex, CAM_Account_Num_String, CAM_ControlAcctDescr, VENDORID, ACTINDX, ACTNUMST, ACTDESCR, VCHRNMBR, APTVCHNM, DEBITAMT, CRDTAMNT, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10100 WHERE DATE1 = @DATE1_RS AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND CAM_ControlAccountIndex BETWEEN @CAM_ControlAccountIndex_RS AND @CAM_ControlAccountIndex_RE AND CAM_Amount_Total BETWEEN @CAM_Amount_Total_RS AND @CAM_Amount_Total_RE ORDER BY DATE1 ASC, TIME1 ASC, CAM_ControlAccountIndex ASC, CAM_Amount_Total ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DATE1, TIME1, CAM_ControlAccountIndex, CAM_Account_Num_String, CAM_ControlAcctDescr, VENDORID, ACTINDX, ACTNUMST, ACTDESCR, VCHRNMBR, APTVCHNM, DEBITAMT, CRDTAMNT, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10100 WHERE DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND CAM_ControlAccountIndex BETWEEN @CAM_ControlAccountIndex_RS AND @CAM_ControlAccountIndex_RE AND CAM_Amount_Total BETWEEN @CAM_Amount_Total_RS AND @CAM_Amount_Total_RE ORDER BY DATE1 ASC, TIME1 ASC, CAM_ControlAccountIndex ASC, CAM_Amount_Total ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM10100F_7] TO [DYNGRP]
GO
