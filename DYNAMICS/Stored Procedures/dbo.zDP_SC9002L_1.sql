SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SC9002L_1] (@PRODID_RS smallint, @Resource_Type_RS smallint, @Series_Number_RS smallint, @PRODID_RE smallint, @Resource_Type_RE smallint, @Series_Number_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, Resource_Type, Series_Number, Series_Name, DEX_ROW_ID FROM .SC9002 ORDER BY PRODID DESC, Resource_Type DESC, Series_Number DESC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, Resource_Type, Series_Number, Series_Name, DEX_ROW_ID FROM .SC9002 WHERE PRODID = @PRODID_RS AND Resource_Type BETWEEN @Resource_Type_RS AND @Resource_Type_RE AND Series_Number BETWEEN @Series_Number_RS AND @Series_Number_RE ORDER BY PRODID DESC, Resource_Type DESC, Series_Number DESC END ELSE BEGIN SELECT TOP 25  PRODID, Resource_Type, Series_Number, Series_Name, DEX_ROW_ID FROM .SC9002 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND Resource_Type BETWEEN @Resource_Type_RS AND @Resource_Type_RE AND Series_Number BETWEEN @Series_Number_RS AND @Series_Number_RE ORDER BY PRODID DESC, Resource_Type DESC, Series_Number DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SC9002L_1] TO [DYNGRP]
GO
