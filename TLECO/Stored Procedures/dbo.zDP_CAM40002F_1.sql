SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM40002F_1] (@CAMAccountType_RS smallint, @SGMNTID_RS char(67), @CAMAccountType_RE smallint, @SGMNTID_RE char(67)) AS  set nocount on IF @CAMAccountType_RS IS NULL BEGIN SELECT TOP 25  CAMAccountType, CAM_Series, SGMNTID, CAM_ControlAccountIndex, CAM_AccrualAccountIndex, CAM_ControlAcctDescr, CAM_AccrualAcctDescr, DEX_ROW_ID FROM .CAM40002 ORDER BY CAMAccountType ASC, SGMNTID ASC END ELSE IF @CAMAccountType_RS = @CAMAccountType_RE BEGIN SELECT TOP 25  CAMAccountType, CAM_Series, SGMNTID, CAM_ControlAccountIndex, CAM_AccrualAccountIndex, CAM_ControlAcctDescr, CAM_AccrualAcctDescr, DEX_ROW_ID FROM .CAM40002 WHERE CAMAccountType = @CAMAccountType_RS AND SGMNTID BETWEEN @SGMNTID_RS AND @SGMNTID_RE ORDER BY CAMAccountType ASC, SGMNTID ASC END ELSE BEGIN SELECT TOP 25  CAMAccountType, CAM_Series, SGMNTID, CAM_ControlAccountIndex, CAM_AccrualAccountIndex, CAM_ControlAcctDescr, CAM_AccrualAcctDescr, DEX_ROW_ID FROM .CAM40002 WHERE CAMAccountType BETWEEN @CAMAccountType_RS AND @CAMAccountType_RE AND SGMNTID BETWEEN @SGMNTID_RS AND @SGMNTID_RE ORDER BY CAMAccountType ASC, SGMNTID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM40002F_1] TO [DYNGRP]
GO
