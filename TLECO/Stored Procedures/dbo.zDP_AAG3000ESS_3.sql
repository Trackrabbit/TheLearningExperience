SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG3000ESS_3] (@DEX_ROW_ID int) AS  set nocount on SELECT TOP 1  aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaTrxDim, aaAcctClassID, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass, DEX_ROW_ID FROM .AAG3000E WHERE DEX_ROW_ID = @DEX_ROW_ID ORDER BY DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG3000ESS_3] TO [DYNGRP]
GO
