SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90102F_1] (@PRODID_RS smallint, @Resource_Type_RS smallint, @Series_Number_RS smallint, @PRODID_RE smallint, @Resource_Type_RE smallint, @Series_Number_RE smallint) AS set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, Resource_Type, Series_Number, DEX_ROW_ID FROM .EXT90102 ORDER BY PRODID ASC, Resource_Type ASC, Series_Number ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, Resource_Type, Series_Number, DEX_ROW_ID FROM .EXT90102 WHERE PRODID = @PRODID_RS AND Resource_Type BETWEEN @Resource_Type_RS AND @Resource_Type_RE AND Series_Number BETWEEN @Series_Number_RS AND @Series_Number_RE ORDER BY PRODID ASC, Resource_Type ASC, Series_Number ASC END ELSE BEGIN SELECT TOP 25  PRODID, Resource_Type, Series_Number, DEX_ROW_ID FROM .EXT90102 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND Resource_Type BETWEEN @Resource_Type_RS AND @Resource_Type_RE AND Series_Number BETWEEN @Series_Number_RS AND @Series_Number_RE ORDER BY PRODID ASC, Resource_Type ASC, Series_Number ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90102F_1] TO [DYNGRP]
GO
