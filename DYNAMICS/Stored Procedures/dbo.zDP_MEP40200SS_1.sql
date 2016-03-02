SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MEP40200SS_1] (@PRODID smallint, @PRODUCTINDEX smallint) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  PRODID, PRODUCTINDEX, PRODNAME, Product_Code, MEKEY, TMPKEY, MEVersion, MESTATUS, KEYSTATUSSTR, MEPRODTYPE, DEX_ROW_ID FROM .MEP40200 WHERE PRODID = @PRODID AND PRODUCTINDEX = @PRODUCTINDEX ORDER BY PRODID ASC, PRODUCTINDEX ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MEP40200SS_1] TO [DYNGRP]
GO
