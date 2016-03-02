SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_CAM10210SS_4] (@DATE1 datetime, @TIME1 datetime, @CMPANYID smallint, @CAMControlAccount_1 char(5), @CAMControlAccount_2 char(5), @CAMControlAccount_3 char(3), @CAMControlAccount_4 char(3)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  DATE1, TIME1, CMPANYID, SGMNTID, CAM_ControlAccountIndex, CAMControlAccount_1, CAMControlAccount_2, CAMControlAccount_3, CAMControlAccount_4, CAM_ControlAcctDescr, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10210 WHERE DATE1 = @DATE1 AND TIME1 = @TIME1 AND CMPANYID = @CMPANYID AND CAMControlAccount_1 = @CAMControlAccount_1 AND CAMControlAccount_2 = @CAMControlAccount_2 AND CAMControlAccount_3 = @CAMControlAccount_3 AND CAMControlAccount_4 = @CAMControlAccount_4 ORDER BY DATE1 ASC, TIME1 ASC, CMPANYID ASC, CAMControlAccount_1 ASC, CAMControlAccount_2 ASC, CAMControlAccount_3 ASC, CAMControlAccount_4 ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM10210SS_4] TO [DYNGRP]
GO
