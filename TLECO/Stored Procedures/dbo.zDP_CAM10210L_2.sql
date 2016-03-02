SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_CAM10210L_2] (@DATE1_RS datetime, @TIME1_RS datetime, @CMPANYID_RS smallint, @CAM_ControlAcctDescr_RS char(33), @DATE1_RE datetime, @TIME1_RE datetime, @CMPANYID_RE smallint, @CAM_ControlAcctDescr_RE char(33)) AS /* 14.00.0084.000 */ set nocount on IF @DATE1_RS IS NULL BEGIN SELECT TOP 25  DATE1, TIME1, CMPANYID, SGMNTID, CAM_ControlAccountIndex, CAMControlAccount_1, CAMControlAccount_2, CAMControlAccount_3, CAMControlAccount_4, CAM_ControlAcctDescr, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10210 ORDER BY DATE1 DESC, TIME1 DESC, CMPANYID DESC, CAM_ControlAcctDescr DESC, DEX_ROW_ID DESC END ELSE IF @DATE1_RS = @DATE1_RE BEGIN SELECT TOP 25  DATE1, TIME1, CMPANYID, SGMNTID, CAM_ControlAccountIndex, CAMControlAccount_1, CAMControlAccount_2, CAMControlAccount_3, CAMControlAccount_4, CAM_ControlAcctDescr, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10210 WHERE DATE1 = @DATE1_RS AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND CAM_ControlAcctDescr BETWEEN @CAM_ControlAcctDescr_RS AND @CAM_ControlAcctDescr_RE ORDER BY DATE1 DESC, TIME1 DESC, CMPANYID DESC, CAM_ControlAcctDescr DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  DATE1, TIME1, CMPANYID, SGMNTID, CAM_ControlAccountIndex, CAMControlAccount_1, CAMControlAccount_2, CAMControlAccount_3, CAMControlAccount_4, CAM_ControlAcctDescr, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10210 WHERE DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND CAM_ControlAcctDescr BETWEEN @CAM_ControlAcctDescr_RS AND @CAM_ControlAcctDescr_RE ORDER BY DATE1 DESC, TIME1 DESC, CMPANYID DESC, CAM_ControlAcctDescr DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM10210L_2] TO [DYNGRP]
GO
