SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MEP40200SS_2] (@PRODNAME char(31)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  PRODID, PRODUCTINDEX, PRODNAME, Product_Code, MEKEY, TMPKEY, MEVersion, MESTATUS, KEYSTATUSSTR, MEPRODTYPE, DEX_ROW_ID FROM .MEP40200 WHERE PRODNAME = @PRODNAME ORDER BY PRODNAME ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MEP40200SS_2] TO [DYNGRP]
GO
