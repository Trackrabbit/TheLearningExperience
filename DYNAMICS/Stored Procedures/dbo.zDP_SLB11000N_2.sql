SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11000N_2] (@BS int, @SmartList_ID char(15), @Table_Number smallint, @PRODID smallint, @TABLTECH char(79), @SmartList_ID_RS char(15), @Table_Number_RS smallint, @PRODID_RS smallint, @TABLTECH_RS char(79), @SmartList_ID_RE char(15), @Table_Number_RE smallint, @PRODID_RE smallint, @TABLTECH_RE char(79)) AS set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, Table_Number, Additional_Table_Number, PRODID, TABLTECH, TABLDESC, TBLPHYSNM, DEX_ROW_ID FROM .SLB11000 WHERE ( SmartList_ID = @SmartList_ID AND Table_Number = @Table_Number AND PRODID = @PRODID AND TABLTECH > @TABLTECH OR SmartList_ID = @SmartList_ID AND Table_Number = @Table_Number AND PRODID > @PRODID OR SmartList_ID = @SmartList_ID AND Table_Number > @Table_Number OR SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC, Table_Number ASC, PRODID ASC, TABLTECH ASC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, Table_Number, Additional_Table_Number, PRODID, TABLTECH, TABLDESC, TBLPHYSNM, DEX_ROW_ID FROM .SLB11000 WHERE SmartList_ID = @SmartList_ID_RS AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND TABLTECH BETWEEN @TABLTECH_RS AND @TABLTECH_RE AND ( SmartList_ID = @SmartList_ID AND Table_Number = @Table_Number AND PRODID = @PRODID AND TABLTECH > @TABLTECH OR SmartList_ID = @SmartList_ID AND Table_Number = @Table_Number AND PRODID > @PRODID OR SmartList_ID = @SmartList_ID AND Table_Number > @Table_Number OR SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC, Table_Number ASC, PRODID ASC, TABLTECH ASC END ELSE BEGIN SELECT TOP 25  SmartList_ID, Table_Number, Additional_Table_Number, PRODID, TABLTECH, TABLDESC, TBLPHYSNM, DEX_ROW_ID FROM .SLB11000 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE AND PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND TABLTECH BETWEEN @TABLTECH_RS AND @TABLTECH_RE AND ( SmartList_ID = @SmartList_ID AND Table_Number = @Table_Number AND PRODID = @PRODID AND TABLTECH > @TABLTECH OR SmartList_ID = @SmartList_ID AND Table_Number = @Table_Number AND PRODID > @PRODID OR SmartList_ID = @SmartList_ID AND Table_Number > @Table_Number OR SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC, Table_Number ASC, PRODID ASC, TABLTECH ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11000N_2] TO [DYNGRP]
GO
