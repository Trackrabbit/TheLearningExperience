SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM40000L_1] (@DUEDATE_RS datetime, @PONUMBER_RS char(17), @DUEDATE_RE datetime, @PONUMBER_RE char(17)) AS  set nocount on IF @DUEDATE_RS IS NULL BEGIN SELECT TOP 25  VENDORID, PONUMBER, POSTATUS, DOCDATE, DUEDATE, Amount, DEX_ROW_ID FROM .CFM40000 ORDER BY DUEDATE DESC, PONUMBER DESC, DEX_ROW_ID DESC END ELSE IF @DUEDATE_RS = @DUEDATE_RE BEGIN SELECT TOP 25  VENDORID, PONUMBER, POSTATUS, DOCDATE, DUEDATE, Amount, DEX_ROW_ID FROM .CFM40000 WHERE DUEDATE = @DUEDATE_RS AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE ORDER BY DUEDATE DESC, PONUMBER DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  VENDORID, PONUMBER, POSTATUS, DOCDATE, DUEDATE, Amount, DEX_ROW_ID FROM .CFM40000 WHERE DUEDATE BETWEEN @DUEDATE_RS AND @DUEDATE_RE AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE ORDER BY DUEDATE DESC, PONUMBER DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM40000L_1] TO [DYNGRP]
GO