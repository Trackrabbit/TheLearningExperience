SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM40101SS_1] (@CMTrxType smallint) AS  set nocount on SELECT TOP 1  CMSortType, CMTrxType, DOCTYNAM, DOCABREV, DEX_ROW_ID FROM .CM40101 WHERE CMTrxType = @CMTrxType ORDER BY CMTrxType ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM40101SS_1] TO [DYNGRP]
GO
