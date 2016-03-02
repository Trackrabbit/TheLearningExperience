SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_aagErrorSS_2] (@DEX_ROW_ID int) AS  set nocount on SELECT TOP 1  ACTDESCR, aaGLWorkHdrID, JRNENTRY, aaErrorNum, aaTrxDim, aaGLWorkDistID, ACTINDX, aaTrxDimDescr, aaAccountClass, aaTrxDimCode, aaAcctClassID, USERID, aaGLWorkAssignID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, aaRelatedTrxDim, aaRelatedTrxDimCode, DEX_ROW_ID FROM .aagError WHERE DEX_ROW_ID = @DEX_ROW_ID ORDER BY DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_aagErrorSS_2] TO [DYNGRP]
GO
