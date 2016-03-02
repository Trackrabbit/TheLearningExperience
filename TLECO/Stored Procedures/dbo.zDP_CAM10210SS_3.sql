SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_CAM10210SS_3] (@DATE1 datetime, @TIME1 datetime, @CMPANYID smallint, @CAM_Amount_Total numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  DATE1, TIME1, CMPANYID, SGMNTID, CAM_ControlAccountIndex, CAMControlAccount_1, CAMControlAccount_2, CAMControlAccount_3, CAMControlAccount_4, CAM_ControlAcctDescr, CAM_Amount_Total, DEX_ROW_ID FROM .CAM10210 WHERE DATE1 = @DATE1 AND TIME1 = @TIME1 AND CMPANYID = @CMPANYID AND CAM_Amount_Total = @CAM_Amount_Total ORDER BY DATE1 ASC, TIME1 ASC, CMPANYID ASC, CAM_Amount_Total ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM10210SS_3] TO [DYNGRP]
GO
