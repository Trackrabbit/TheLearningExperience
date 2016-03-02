SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_CAM10210SI] (@DATE1 datetime, @TIME1 datetime, @CMPANYID smallint, @SGMNTID char(67), @CAM_ControlAccountIndex int, @CAMControlAccount_1 char(5), @CAMControlAccount_2 char(5), @CAMControlAccount_3 char(3), @CAMControlAccount_4 char(3), @CAM_ControlAcctDescr char(33), @CAM_Amount_Total numeric(19,5), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .CAM10210 (DATE1, TIME1, CMPANYID, SGMNTID, CAM_ControlAccountIndex, CAMControlAccount_1, CAMControlAccount_2, CAMControlAccount_3, CAMControlAccount_4, CAM_ControlAcctDescr, CAM_Amount_Total) VALUES ( @DATE1, @TIME1, @CMPANYID, @SGMNTID, @CAM_ControlAccountIndex, @CAMControlAccount_1, @CAMControlAccount_2, @CAMControlAccount_3, @CAMControlAccount_4, @CAM_ControlAcctDescr, @CAM_Amount_Total) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM10210SI] TO [DYNGRP]
GO
