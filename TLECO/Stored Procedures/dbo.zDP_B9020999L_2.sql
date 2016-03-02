SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9020999L_2] (@INDEX1_RS smallint, @INDEX1_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @INDEX1_RS IS NULL BEGIN SELECT TOP 25  RMPERDSC, PRINCIPAL_BALANCE, PRINCIPAL_AMOUNT, INTEREST_AMOUNT, BSSI_ChargeAmt, AGPERAMT_1, AGPERAMT_2, AGPERAMT_3, AGPERAMT_4, AGPERAMT_5, AGPERAMT_6, AGPERAMT_7, Count1, INDEX1, USERID, DEX_ROW_ID FROM .B9020999 ORDER BY INDEX1 DESC, DEX_ROW_ID DESC END ELSE IF @INDEX1_RS = @INDEX1_RE BEGIN SELECT TOP 25  RMPERDSC, PRINCIPAL_BALANCE, PRINCIPAL_AMOUNT, INTEREST_AMOUNT, BSSI_ChargeAmt, AGPERAMT_1, AGPERAMT_2, AGPERAMT_3, AGPERAMT_4, AGPERAMT_5, AGPERAMT_6, AGPERAMT_7, Count1, INDEX1, USERID, DEX_ROW_ID FROM .B9020999 WHERE INDEX1 = @INDEX1_RS ORDER BY INDEX1 DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  RMPERDSC, PRINCIPAL_BALANCE, PRINCIPAL_AMOUNT, INTEREST_AMOUNT, BSSI_ChargeAmt, AGPERAMT_1, AGPERAMT_2, AGPERAMT_3, AGPERAMT_4, AGPERAMT_5, AGPERAMT_6, AGPERAMT_7, Count1, INDEX1, USERID, DEX_ROW_ID FROM .B9020999 WHERE INDEX1 BETWEEN @INDEX1_RS AND @INDEX1_RE ORDER BY INDEX1 DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9020999L_2] TO [DYNGRP]
GO
