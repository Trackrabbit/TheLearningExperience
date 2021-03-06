SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM40101F_1] (@CMTrxType_RS smallint, @CMTrxType_RE smallint) AS  set nocount on IF @CMTrxType_RS IS NULL BEGIN SELECT TOP 25  CMSortType, CMTrxType, DOCTYNAM, DOCABREV, DEX_ROW_ID FROM .CM40101 ORDER BY CMTrxType ASC END ELSE IF @CMTrxType_RS = @CMTrxType_RE BEGIN SELECT TOP 25  CMSortType, CMTrxType, DOCTYNAM, DOCABREV, DEX_ROW_ID FROM .CM40101 WHERE CMTrxType = @CMTrxType_RS ORDER BY CMTrxType ASC END ELSE BEGIN SELECT TOP 25  CMSortType, CMTrxType, DOCTYNAM, DOCABREV, DEX_ROW_ID FROM .CM40101 WHERE CMTrxType BETWEEN @CMTrxType_RS AND @CMTrxType_RE ORDER BY CMTrxType ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM40101F_1] TO [DYNGRP]
GO
