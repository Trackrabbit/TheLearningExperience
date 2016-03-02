SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM40000UN_1] (@BS int, @DUEDATE datetime, @PONUMBER char(17), @DUEDATE_RS datetime, @PONUMBER_RS char(17), @DUEDATE_RE datetime, @PONUMBER_RE char(17)) AS  set nocount on IF @DUEDATE_RS IS NULL BEGIN SELECT TOP 25  VENDORID, PONUMBER, POSTATUS, DOCDATE, DUEDATE, Amount, DEX_ROW_ID FROM .CFM40000 WHERE ( DUEDATE = @DUEDATE AND PONUMBER > @PONUMBER OR DUEDATE > @DUEDATE ) ORDER BY DUEDATE ASC, PONUMBER ASC, DEX_ROW_ID ASC END ELSE IF @DUEDATE_RS = @DUEDATE_RE BEGIN SELECT TOP 25  VENDORID, PONUMBER, POSTATUS, DOCDATE, DUEDATE, Amount, DEX_ROW_ID FROM .CFM40000 WHERE DUEDATE = @DUEDATE_RS AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ( DUEDATE = @DUEDATE AND PONUMBER > @PONUMBER OR DUEDATE > @DUEDATE ) ORDER BY DUEDATE ASC, PONUMBER ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  VENDORID, PONUMBER, POSTATUS, DOCDATE, DUEDATE, Amount, DEX_ROW_ID FROM .CFM40000 WHERE DUEDATE BETWEEN @DUEDATE_RS AND @DUEDATE_RE AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ( DUEDATE = @DUEDATE AND PONUMBER > @PONUMBER OR DUEDATE > @DUEDATE ) ORDER BY DUEDATE ASC, PONUMBER ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM40000UN_1] TO [DYNGRP]
GO
