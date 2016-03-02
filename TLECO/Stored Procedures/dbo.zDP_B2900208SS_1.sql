SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900208SS_1] (@BSSI_ImportID char(15), @DATE1 datetime, @USERID char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_ImportID, DATE1, INTEREST_AMOUNT, USERID, ERRDESCR, DEX_ROW_ID FROM .B2900208 WHERE BSSI_ImportID = @BSSI_ImportID AND DATE1 = @DATE1 AND USERID = @USERID ORDER BY BSSI_ImportID ASC, DATE1 ASC, USERID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900208SS_1] TO [DYNGRP]
GO