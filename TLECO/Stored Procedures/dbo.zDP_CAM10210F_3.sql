SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_CAM10210F_3] (@DATE1_RS datetime, @TIME1_RS datetime, @CMPANYID_RS smallint, @CAM_Amount_Total_RS numeric(19,5), @DATE1_RE datetime, @TIME1_RE datetime, @CMPANYID_RE smallint, @CAM_Amount_Total_RE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on IF @DATE1_RS IS NULL BEGIN SELECT TOP 25  DATE1, TIME1, CMPANYID, SGMNTID, CAM_ControlAccountIndex, CAMControlAccount_1, CAMControlAccount_2, CAMControlAccount_3, CAMControlAccount_4, CAM_ControlAcctDescr, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10210 ORDER BY DATE1 ASC, TIME1 ASC, CMPANYID ASC, CAM_Amount_Total ASC, DEX_ROW_ID ASC END ELSE IF @DATE1_RS = @DATE1_RE BEGIN SELECT TOP 25  DATE1, TIME1, CMPANYID, SGMNTID, CAM_ControlAccountIndex, CAMControlAccount_1, CAMControlAccount_2, CAMControlAccount_3, CAMControlAccount_4, CAM_ControlAcctDescr, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10210 WHERE DATE1 = @DATE1_RS AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND CAM_Amount_Total BETWEEN @CAM_Amount_Total_RS AND @CAM_Amount_Total_RE ORDER BY DATE1 ASC, TIME1 ASC, CMPANYID ASC, CAM_Amount_Total ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DATE1, TIME1, CMPANYID, SGMNTID, CAM_ControlAccountIndex, CAMControlAccount_1, CAMControlAccount_2, CAMControlAccount_3, CAMControlAccount_4, CAM_ControlAcctDescr, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10210 WHERE DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND CAM_Amount_Total BETWEEN @CAM_Amount_Total_RS AND @CAM_Amount_Total_RE ORDER BY DATE1 ASC, TIME1 ASC, CMPANYID ASC, CAM_Amount_Total ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM10210F_3] TO [DYNGRP]
GO
