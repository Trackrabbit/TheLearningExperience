SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MEP40200N_2] (@BS int, @PRODNAME char(31), @DEX_ROW_ID int, @PRODNAME_RS char(31), @PRODNAME_RE char(31)) AS /* 14.00.0084.000 */ set nocount on IF @PRODNAME_RS IS NULL BEGIN SELECT TOP 25  PRODID, PRODUCTINDEX, PRODNAME, Product_Code, MEKEY, TMPKEY, MEVersion, MESTATUS, KEYSTATUSSTR, MEPRODTYPE, DEX_ROW_ID FROM .MEP40200 WHERE ( PRODNAME = @PRODNAME AND DEX_ROW_ID > @DEX_ROW_ID OR PRODNAME > @PRODNAME ) ORDER BY PRODNAME ASC, DEX_ROW_ID ASC END ELSE IF @PRODNAME_RS = @PRODNAME_RE BEGIN SELECT TOP 25  PRODID, PRODUCTINDEX, PRODNAME, Product_Code, MEKEY, TMPKEY, MEVersion, MESTATUS, KEYSTATUSSTR, MEPRODTYPE, DEX_ROW_ID FROM .MEP40200 WHERE PRODNAME = @PRODNAME_RS AND ( PRODNAME = @PRODNAME AND DEX_ROW_ID > @DEX_ROW_ID OR PRODNAME > @PRODNAME ) ORDER BY PRODNAME ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRODID, PRODUCTINDEX, PRODNAME, Product_Code, MEKEY, TMPKEY, MEVersion, MESTATUS, KEYSTATUSSTR, MEPRODTYPE, DEX_ROW_ID FROM .MEP40200 WHERE PRODNAME BETWEEN @PRODNAME_RS AND @PRODNAME_RE AND ( PRODNAME = @PRODNAME AND DEX_ROW_ID > @DEX_ROW_ID OR PRODNAME > @PRODNAME ) ORDER BY PRODNAME ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MEP40200N_2] TO [DYNGRP]
GO
