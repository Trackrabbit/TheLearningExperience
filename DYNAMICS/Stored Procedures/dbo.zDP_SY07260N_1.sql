SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY07260N_1] (@BS int, @ListDictID smallint, @ListID smallint, @ViewID int, @SEQNUMBR int, @ListDictID_RS smallint, @ListID_RS smallint, @ViewID_RS int, @SEQNUMBR_RS int, @ListDictID_RE smallint, @ListID_RE smallint, @ViewID_RE int, @SEQNUMBR_RE int) AS  set nocount on IF @ListDictID_RS IS NULL BEGIN SELECT TOP 25  ListDictID, ListID, ViewID, SEQNUMBR, URL, SRS_Report_Name, DEX_ROW_ID FROM .SY07260 WHERE ( ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID AND SEQNUMBR > @SEQNUMBR OR ListDictID = @ListDictID AND ListID = @ListID AND ViewID > @ViewID OR ListDictID = @ListDictID AND ListID > @ListID OR ListDictID > @ListDictID ) ORDER BY ListDictID ASC, ListID ASC, ViewID ASC, SEQNUMBR ASC END ELSE IF @ListDictID_RS = @ListDictID_RE BEGIN SELECT TOP 25  ListDictID, ListID, ViewID, SEQNUMBR, URL, SRS_Report_Name, DEX_ROW_ID FROM .SY07260 WHERE ListDictID = @ListDictID_RS AND ListID BETWEEN @ListID_RS AND @ListID_RE AND ViewID BETWEEN @ViewID_RS AND @ViewID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID AND SEQNUMBR > @SEQNUMBR OR ListDictID = @ListDictID AND ListID = @ListID AND ViewID > @ViewID OR ListDictID = @ListDictID AND ListID > @ListID OR ListDictID > @ListDictID ) ORDER BY ListDictID ASC, ListID ASC, ViewID ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  ListDictID, ListID, ViewID, SEQNUMBR, URL, SRS_Report_Name, DEX_ROW_ID FROM .SY07260 WHERE ListDictID BETWEEN @ListDictID_RS AND @ListDictID_RE AND ListID BETWEEN @ListID_RS AND @ListID_RE AND ViewID BETWEEN @ViewID_RS AND @ViewID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( ListDictID = @ListDictID AND ListID = @ListID AND ViewID = @ViewID AND SEQNUMBR > @SEQNUMBR OR ListDictID = @ListDictID AND ListID = @ListID AND ViewID > @ViewID OR ListDictID = @ListDictID AND ListID > @ListID OR ListDictID > @ListDictID ) ORDER BY ListDictID ASC, ListID ASC, ViewID ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07260N_1] TO [DYNGRP]
GO
