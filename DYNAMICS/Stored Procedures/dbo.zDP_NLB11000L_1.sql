SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB11000L_1] (@Navigation_ID_RS char(15), @Table_Number_RS smallint, @Additional_Table_Number_RS smallint, @Navigation_ID_RE char(15), @Table_Number_RE smallint, @Additional_Table_Number_RE smallint) AS set nocount on IF @Navigation_ID_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, Table_Number, Additional_Table_Number, PRODID, TABLTECH, TABLDESC, TBLPHYSNM, DEX_ROW_ID FROM .NLB11000 ORDER BY Navigation_ID DESC, Table_Number DESC, Additional_Table_Number DESC END ELSE IF @Navigation_ID_RS = @Navigation_ID_RE BEGIN SELECT TOP 25  Navigation_ID, Table_Number, Additional_Table_Number, PRODID, TABLTECH, TABLDESC, TBLPHYSNM, DEX_ROW_ID FROM .NLB11000 WHERE Navigation_ID = @Navigation_ID_RS AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND Additional_Table_Number BETWEEN @Additional_Table_Number_RS AND @Additional_Table_Number_RE ORDER BY Navigation_ID DESC, Table_Number DESC, Additional_Table_Number DESC END ELSE BEGIN SELECT TOP 25  Navigation_ID, Table_Number, Additional_Table_Number, PRODID, TABLTECH, TABLDESC, TBLPHYSNM, DEX_ROW_ID FROM .NLB11000 WHERE Navigation_ID BETWEEN @Navigation_ID_RS AND @Navigation_ID_RE AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND Additional_Table_Number BETWEEN @Additional_Table_Number_RS AND @Additional_Table_Number_RE ORDER BY Navigation_ID DESC, Table_Number DESC, Additional_Table_Number DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB11000L_1] TO [DYNGRP]
GO
