SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB90200N_1] (@BS int, @PRODID smallint, @Series_Number smallint, @PRODID_RS smallint, @Series_Number_RS smallint, @PRODID_RE smallint, @Series_Number_RE smallint) AS set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, Series_Number, Series_Name, DEX_ROW_ID FROM .ERB90200 WHERE ( PRODID = @PRODID AND Series_Number > @Series_Number OR PRODID > @PRODID ) ORDER BY PRODID ASC, Series_Number ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, Series_Number, Series_Name, DEX_ROW_ID FROM .ERB90200 WHERE PRODID = @PRODID_RS AND Series_Number BETWEEN @Series_Number_RS AND @Series_Number_RE AND ( PRODID = @PRODID AND Series_Number > @Series_Number OR PRODID > @PRODID ) ORDER BY PRODID ASC, Series_Number ASC END ELSE BEGIN SELECT TOP 25  PRODID, Series_Number, Series_Name, DEX_ROW_ID FROM .ERB90200 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND Series_Number BETWEEN @Series_Number_RS AND @Series_Number_RE AND ( PRODID = @PRODID AND Series_Number > @Series_Number OR PRODID > @PRODID ) ORDER BY PRODID ASC, Series_Number ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB90200N_1] TO [DYNGRP]
GO
