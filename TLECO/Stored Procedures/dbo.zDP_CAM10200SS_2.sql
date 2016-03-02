SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CAM10200SS_2] (@USERID char(15), @DATE1 datetime, @TIME1 datetime) AS  set nocount on SELECT TOP 1  CAMAccountType, DATE1, TIME1, CMPANYID, CAM_Series, SGMTNUMB, USERID, CAM_Amount_Total, CAM_CntrlCount_1, CAM_CntrlCount_2, CAM_DistCount_1, CAM_DistCount_2, CAM_DistCount_3, CAM_DistCount_4, CAM_DistCount_5, CAM_DistCount_6, CAM_DistCount_7, CAM_DistCount_8, CAM_DistCount_9, CAM_DistCount_10, CAM_DistCount_11, CAM_DistCount_12, CAM_DistCount_13, CAM_DistCount_14, CAM_DistCount_15, CAM_DistCount_16, CAM_DocCount_1, CAM_DocCount_2, CAM_DocCount_3, CAM_DocCount_4, CAM_DocCount_5, CAM_DocCount_6, CAM_DocCount_7, BACHNUMB, BCHCOMNT, REFRENCE, SOURCDOC, TRXSRCPX, TRXDATE, RVRSNGDT, CAM_Status, DEX_ROW_ID FROM .CAM10200 WHERE USERID = @USERID AND DATE1 = @DATE1 AND TIME1 = @TIME1 ORDER BY USERID ASC, DATE1 ASC, TIME1 ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CAM10200SS_2] TO [DYNGRP]
GO
