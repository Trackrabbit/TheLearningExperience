SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM10000F_2] (@DATE1_RS datetime, @TIME1_RS datetime, @VENDORID_RS char(15), @VCHRNMBR_RS char(21), @DATE1_RE datetime, @TIME1_RE datetime, @VENDORID_RE char(15), @VCHRNMBR_RE char(21)) AS  set nocount on IF @DATE1_RS IS NULL BEGIN SELECT TOP 25  DATE1, TIME1, VCHRNMBR, DOCTYPE, CNTRLTYP, VENDORID, CAM_Amount_Total, CAM_Amount_Owing, DEX_ROW_ID FROM .CAM10000 ORDER BY DATE1 ASC, TIME1 ASC, VENDORID ASC, VCHRNMBR ASC END ELSE IF @DATE1_RS = @DATE1_RE BEGIN SELECT TOP 25  DATE1, TIME1, VCHRNMBR, DOCTYPE, CNTRLTYP, VENDORID, CAM_Amount_Total, CAM_Amount_Owing, DEX_ROW_ID FROM .CAM10000 WHERE DATE1 = @DATE1_RS AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY DATE1 ASC, TIME1 ASC, VENDORID ASC, VCHRNMBR ASC END ELSE BEGIN SELECT TOP 25  DATE1, TIME1, VCHRNMBR, DOCTYPE, CNTRLTYP, VENDORID, CAM_Amount_Total, CAM_Amount_Owing, DEX_ROW_ID FROM .CAM10000 WHERE DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE ORDER BY DATE1 ASC, TIME1 ASC, VENDORID ASC, VCHRNMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM10000F_2] TO [DYNGRP]
GO