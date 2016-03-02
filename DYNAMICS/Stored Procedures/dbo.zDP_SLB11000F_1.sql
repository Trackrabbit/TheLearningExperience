SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11000F_1] (@SmartList_ID_RS char(15), @Table_Number_RS smallint, @Additional_Table_Number_RS smallint, @SmartList_ID_RE char(15), @Table_Number_RE smallint, @Additional_Table_Number_RE smallint) AS set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, Table_Number, Additional_Table_Number, PRODID, TABLTECH, TABLDESC, TBLPHYSNM, DEX_ROW_ID FROM .SLB11000 ORDER BY SmartList_ID ASC, Table_Number ASC, Additional_Table_Number ASC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, Table_Number, Additional_Table_Number, PRODID, TABLTECH, TABLDESC, TBLPHYSNM, DEX_ROW_ID FROM .SLB11000 WHERE SmartList_ID = @SmartList_ID_RS AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND Additional_Table_Number BETWEEN @Additional_Table_Number_RS AND @Additional_Table_Number_RE ORDER BY SmartList_ID ASC, Table_Number ASC, Additional_Table_Number ASC END ELSE BEGIN SELECT TOP 25  SmartList_ID, Table_Number, Additional_Table_Number, PRODID, TABLTECH, TABLDESC, TBLPHYSNM, DEX_ROW_ID FROM .SLB11000 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND Additional_Table_Number BETWEEN @Additional_Table_Number_RS AND @Additional_Table_Number_RE ORDER BY SmartList_ID ASC, Table_Number ASC, Additional_Table_Number ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11000F_1] TO [DYNGRP]
GO
