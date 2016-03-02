SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_aagErrorF_2] (@DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS  set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  ACTDESCR, aaGLWorkHdrID, JRNENTRY, aaErrorNum, aaTrxDim, aaGLWorkDistID, ACTINDX, aaTrxDimDescr, aaAccountClass, aaTrxDimCode, aaAcctClassID, USERID, aaGLWorkAssignID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, aaRelatedTrxDim, aaRelatedTrxDimCode, DEX_ROW_ID FROM .aagError ORDER BY DEX_ROW_ID ASC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  ACTDESCR, aaGLWorkHdrID, JRNENTRY, aaErrorNum, aaTrxDim, aaGLWorkDistID, ACTINDX, aaTrxDimDescr, aaAccountClass, aaTrxDimCode, aaAcctClassID, USERID, aaGLWorkAssignID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, aaRelatedTrxDim, aaRelatedTrxDimCode, DEX_ROW_ID FROM .aagError WHERE DEX_ROW_ID = @DEX_ROW_ID_RS ORDER BY DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ACTDESCR, aaGLWorkHdrID, JRNENTRY, aaErrorNum, aaTrxDim, aaGLWorkDistID, ACTINDX, aaTrxDimDescr, aaAccountClass, aaTrxDimCode, aaAcctClassID, USERID, aaGLWorkAssignID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, aaRelatedTrxDim, aaRelatedTrxDimCode, DEX_ROW_ID FROM .aagError WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE ORDER BY DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_aagErrorF_2] TO [DYNGRP]
GO
