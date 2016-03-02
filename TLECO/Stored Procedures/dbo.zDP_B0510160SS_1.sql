SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510160SS_1] (@YEAR1 smallint, @PERIODID smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  YEAR1, PERIODID, PERNAME, PERIODDT, NOTEINDX, DEX_ROW_ID FROM .B0510160 WHERE YEAR1 = @YEAR1 AND PERIODID = @PERIODID ORDER BY YEAR1 ASC, PERIODID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510160SS_1] TO [DYNGRP]
GO