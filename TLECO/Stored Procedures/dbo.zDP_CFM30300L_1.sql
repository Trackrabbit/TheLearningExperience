SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM30300L_1] (@DUEDATE_RS datetime, @SOPNUMBE_RS char(21), @DUEDATE_RE datetime, @SOPNUMBE_RE char(21)) AS  set nocount on IF @DUEDATE_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, SOPNUMBE, SOPTYPE, DOCDATE, DUEDATE, Amount, AMNTPAID, DEX_ROW_ID FROM .CFM30300 ORDER BY DUEDATE DESC, SOPNUMBE DESC, DEX_ROW_ID DESC END ELSE IF @DUEDATE_RS = @DUEDATE_RE BEGIN SELECT TOP 25  CUSTNMBR, SOPNUMBE, SOPTYPE, DOCDATE, DUEDATE, Amount, AMNTPAID, DEX_ROW_ID FROM .CFM30300 WHERE DUEDATE = @DUEDATE_RS AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE ORDER BY DUEDATE DESC, SOPNUMBE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, SOPNUMBE, SOPTYPE, DOCDATE, DUEDATE, Amount, AMNTPAID, DEX_ROW_ID FROM .CFM30300 WHERE DUEDATE BETWEEN @DUEDATE_RS AND @DUEDATE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE ORDER BY DUEDATE DESC, SOPNUMBE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM30300L_1] TO [DYNGRP]
GO
