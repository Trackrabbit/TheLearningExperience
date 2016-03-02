SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM40002SI] (@CAMAccountType smallint, @CAM_Series smallint, @SGMNTID char(67), @CAM_ControlAccountIndex int, @CAM_AccrualAccountIndex int, @CAM_ControlAcctDescr char(33), @CAM_AccrualAcctDescr char(33), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CAM40002 (CAMAccountType, CAM_Series, SGMNTID, CAM_ControlAccountIndex, CAM_AccrualAccountIndex, CAM_ControlAcctDescr, CAM_AccrualAcctDescr) VALUES ( @CAMAccountType, @CAM_Series, @SGMNTID, @CAM_ControlAccountIndex, @CAM_AccrualAccountIndex, @CAM_ControlAcctDescr, @CAM_AccrualAcctDescr) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM40002SI] TO [DYNGRP]
GO
