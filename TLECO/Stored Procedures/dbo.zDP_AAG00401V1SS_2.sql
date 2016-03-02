SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00401V1SS_2] (@aaCodeSequence int) AS  set nocount on SELECT TOP 1  aaTrxDimCodeID, aaCodeSequence, aaTrxDimCodeDescr, PRCNTAGE, DEX_ROW_ID FROM .AAG00401V1 WHERE aaCodeSequence = @aaCodeSequence ORDER BY aaCodeSequence ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00401V1SS_2] TO [DYNGRP]
GO
