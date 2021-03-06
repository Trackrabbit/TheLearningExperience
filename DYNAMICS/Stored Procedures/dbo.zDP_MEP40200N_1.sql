SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MEP40200N_1] (@BS int, @PRODID smallint, @PRODUCTINDEX smallint, @PRODID_RS smallint, @PRODUCTINDEX_RS smallint, @PRODID_RE smallint, @PRODUCTINDEX_RE smallint) AS /* 14.00.0084.000 */ set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, PRODUCTINDEX, PRODNAME, Product_Code, MEKEY, TMPKEY, MEVersion, MESTATUS, KEYSTATUSSTR, MEPRODTYPE, DEX_ROW_ID FROM .MEP40200 WHERE ( PRODID = @PRODID AND PRODUCTINDEX > @PRODUCTINDEX OR PRODID > @PRODID ) ORDER BY PRODID ASC, PRODUCTINDEX ASC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, PRODUCTINDEX, PRODNAME, Product_Code, MEKEY, TMPKEY, MEVersion, MESTATUS, KEYSTATUSSTR, MEPRODTYPE, DEX_ROW_ID FROM .MEP40200 WHERE PRODID = @PRODID_RS AND PRODUCTINDEX BETWEEN @PRODUCTINDEX_RS AND @PRODUCTINDEX_RE AND ( PRODID = @PRODID AND PRODUCTINDEX > @PRODUCTINDEX OR PRODID > @PRODID ) ORDER BY PRODID ASC, PRODUCTINDEX ASC END ELSE BEGIN SELECT TOP 25  PRODID, PRODUCTINDEX, PRODNAME, Product_Code, MEKEY, TMPKEY, MEVersion, MESTATUS, KEYSTATUSSTR, MEPRODTYPE, DEX_ROW_ID FROM .MEP40200 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND PRODUCTINDEX BETWEEN @PRODUCTINDEX_RS AND @PRODUCTINDEX_RE AND ( PRODID = @PRODID AND PRODUCTINDEX > @PRODUCTINDEX OR PRODID > @PRODID ) ORDER BY PRODID ASC, PRODUCTINDEX ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MEP40200N_1] TO [DYNGRP]
GO
