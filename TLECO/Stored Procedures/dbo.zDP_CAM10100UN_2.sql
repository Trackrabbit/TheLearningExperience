SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM10100UN_2] (@BS int, @DATE1 datetime, @TIME1 datetime, @CAM_ControlAccountIndex int, @ACTINDX int, @VENDORID char(15), @VCHRNMBR char(21), @DATE1_RS datetime, @TIME1_RS datetime, @CAM_ControlAccountIndex_RS int, @ACTINDX_RS int, @VENDORID_RS char(15), @VCHRNMBR_RS char(21), @DATE1_RE datetime, @TIME1_RE datetime, @CAM_ControlAccountIndex_RE int, @ACTINDX_RE int, @VENDORID_RE char(15), @VCHRNMBR_RE char(21)) AS  set nocount on IF @DATE1_RS IS NULL BEGIN SELECT TOP 25  DATE1, TIME1, CAM_ControlAccountIndex, CAM_Account_Num_String, CAM_ControlAcctDescr, VENDORID, ACTINDX, ACTNUMST, ACTDESCR, VCHRNMBR, APTVCHNM, DEBITAMT, CRDTAMNT, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10100 WHERE ( DATE1 = @DATE1 AND TIME1 = @TIME1 AND CAM_ControlAccountIndex = @CAM_ControlAccountIndex AND ACTINDX = @ACTINDX AND VENDORID = @VENDORID AND VCHRNMBR > @VCHRNMBR OR DATE1 = @DATE1 AND TIME1 = @TIME1 AND CAM_ControlAccountIndex = @CAM_ControlAccountIndex AND ACTINDX = @ACTINDX AND VENDORID > @VENDORID OR DATE1 = @DATE1 AND TIME1 = @TIME1 AND CAM_ControlAccountIndex = @CAM_ControlAccountIndex AND ACTINDX > @ACTINDX OR DATE1 = @DATE1 AND TIME1 = @TIME1 AND CAM_ControlAccountIndex > @CAM_ControlAccountIndex OR DATE1 = @DATE1 AND TIME1 > @TIME1 OR DATE1 > @DATE1 ) ORDER BY DATE1 ASC, TIME1 ASC, CAM_ControlAccountIndex ASC, ACTINDX ASC, VENDORID ASC, VCHRNMBR ASC, DEX_ROW_ID ASC END ELSE IF @DATE1_RS = @DATE1_RE BEGIN SELECT TOP 25  DATE1, TIME1, CAM_ControlAccountIndex, CAM_Account_Num_String, CAM_ControlAcctDescr, VENDORID, ACTINDX, ACTNUMST, ACTDESCR, VCHRNMBR, APTVCHNM, DEBITAMT, CRDTAMNT, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10100 WHERE DATE1 = @DATE1_RS AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND CAM_ControlAccountIndex BETWEEN @CAM_ControlAccountIndex_RS AND @CAM_ControlAccountIndex_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND ( DATE1 = @DATE1 AND TIME1 = @TIME1 AND CAM_ControlAccountIndex = @CAM_ControlAccountIndex AND ACTINDX = @ACTINDX AND VENDORID = @VENDORID AND VCHRNMBR > @VCHRNMBR OR DATE1 = @DATE1 AND TIME1 = @TIME1 AND CAM_ControlAccountIndex = @CAM_ControlAccountIndex AND ACTINDX = @ACTINDX AND VENDORID > @VENDORID OR DATE1 = @DATE1 AND TIME1 = @TIME1 AND CAM_ControlAccountIndex = @CAM_ControlAccountIndex AND ACTINDX > @ACTINDX OR DATE1 = @DATE1 AND TIME1 = @TIME1 AND CAM_ControlAccountIndex > @CAM_ControlAccountIndex OR DATE1 = @DATE1 AND TIME1 > @TIME1 OR DATE1 > @DATE1 ) ORDER BY DATE1 ASC, TIME1 ASC, CAM_ControlAccountIndex ASC, ACTINDX ASC, VENDORID ASC, VCHRNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DATE1, TIME1, CAM_ControlAccountIndex, CAM_Account_Num_String, CAM_ControlAcctDescr, VENDORID, ACTINDX, ACTNUMST, ACTDESCR, VCHRNMBR, APTVCHNM, DEBITAMT, CRDTAMNT, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10100 WHERE DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND CAM_ControlAccountIndex BETWEEN @CAM_ControlAccountIndex_RS AND @CAM_ControlAccountIndex_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND ( DATE1 = @DATE1 AND TIME1 = @TIME1 AND CAM_ControlAccountIndex = @CAM_ControlAccountIndex AND ACTINDX = @ACTINDX AND VENDORID = @VENDORID AND VCHRNMBR > @VCHRNMBR OR DATE1 = @DATE1 AND TIME1 = @TIME1 AND CAM_ControlAccountIndex = @CAM_ControlAccountIndex AND ACTINDX = @ACTINDX AND VENDORID > @VENDORID OR DATE1 = @DATE1 AND TIME1 = @TIME1 AND CAM_ControlAccountIndex = @CAM_ControlAccountIndex AND ACTINDX > @ACTINDX OR DATE1 = @DATE1 AND TIME1 = @TIME1 AND CAM_ControlAccountIndex > @CAM_ControlAccountIndex OR DATE1 = @DATE1 AND TIME1 > @TIME1 OR DATE1 > @DATE1 ) ORDER BY DATE1 ASC, TIME1 ASC, CAM_ControlAccountIndex ASC, ACTINDX ASC, VENDORID ASC, VCHRNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM10100UN_2] TO [DYNGRP]
GO
