SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM40002SS_1] (@CAMAccountType smallint, @SGMNTID char(67)) AS  set nocount on SELECT TOP 1  CAMAccountType, CAM_Series, SGMNTID, CAM_ControlAccountIndex, CAM_AccrualAccountIndex, CAM_ControlAcctDescr, CAM_AccrualAcctDescr, DEX_ROW_ID FROM .CAM40002 WHERE CAMAccountType = @CAMAccountType AND SGMNTID = @SGMNTID ORDER BY CAMAccountType ASC, SGMNTID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM40002SS_1] TO [DYNGRP]
GO
