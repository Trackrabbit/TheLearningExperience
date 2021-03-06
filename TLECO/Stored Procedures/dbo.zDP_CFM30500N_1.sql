SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM30500N_1] (@BS int, @SOPNUMBE char(21), @DEX_ROW_ID int, @SOPNUMBE_RS char(21), @SOPNUMBE_RE char(21)) AS  set nocount on IF @SOPNUMBE_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, SOPNUMBE, SOPTYPE, DOCDATE, DUEDATE, PYMTRMID, DISGRPER, DUEGRPER, Amount, AMNTPAID, DEX_ROW_ID FROM .CFM30500 WHERE ( SOPNUMBE = @SOPNUMBE AND DEX_ROW_ID > @DEX_ROW_ID OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, DEX_ROW_ID ASC END ELSE IF @SOPNUMBE_RS = @SOPNUMBE_RE BEGIN SELECT TOP 25  CUSTNMBR, SOPNUMBE, SOPTYPE, DOCDATE, DUEDATE, PYMTRMID, DISGRPER, DUEGRPER, Amount, AMNTPAID, DEX_ROW_ID FROM .CFM30500 WHERE SOPNUMBE = @SOPNUMBE_RS AND ( SOPNUMBE = @SOPNUMBE AND DEX_ROW_ID > @DEX_ROW_ID OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, SOPNUMBE, SOPTYPE, DOCDATE, DUEDATE, PYMTRMID, DISGRPER, DUEGRPER, Amount, AMNTPAID, DEX_ROW_ID FROM .CFM30500 WHERE SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND ( SOPNUMBE = @SOPNUMBE AND DEX_ROW_ID > @DEX_ROW_ID OR SOPNUMBE > @SOPNUMBE ) ORDER BY SOPNUMBE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM30500N_1] TO [DYNGRP]
GO
