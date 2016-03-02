SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466006L_2] (@VCHRNMBR_RS char(21), @BSSI_Description2_RS char(51), @VCHRNMBR_RE char(21), @BSSI_Description2_RE char(51)) AS /* 12.00.0270.000 */ set nocount on IF @VCHRNMBR_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, BSSI_Template_ID, BSSI_Description2, BSSI_Allocation_Method, BSSI_Charge_ID, BSSI_MarkUp_MarkDown, BSSI_Default_, NOTEINDX, DEX_ROW_ID FROM .BS466006 ORDER BY VCHRNMBR DESC, BSSI_Description2 DESC, DEX_ROW_ID DESC END ELSE IF @VCHRNMBR_RS = @VCHRNMBR_RE BEGIN SELECT TOP 25  VCHRNMBR, BSSI_Template_ID, BSSI_Description2, BSSI_Allocation_Method, BSSI_Charge_ID, BSSI_MarkUp_MarkDown, BSSI_Default_, NOTEINDX, DEX_ROW_ID FROM .BS466006 WHERE VCHRNMBR = @VCHRNMBR_RS AND BSSI_Description2 BETWEEN @BSSI_Description2_RS AND @BSSI_Description2_RE ORDER BY VCHRNMBR DESC, BSSI_Description2 DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, BSSI_Template_ID, BSSI_Description2, BSSI_Allocation_Method, BSSI_Charge_ID, BSSI_MarkUp_MarkDown, BSSI_Default_, NOTEINDX, DEX_ROW_ID FROM .BS466006 WHERE VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND BSSI_Description2 BETWEEN @BSSI_Description2_RS AND @BSSI_Description2_RE ORDER BY VCHRNMBR DESC, BSSI_Description2 DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466006L_2] TO [DYNGRP]
GO
