SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ECM10002SS_1] (@PONUMBER char(17), @ORD int) AS  set nocount on SELECT TOP 1  PONUMBER, ORD, ITEMNMBR, ITEMDESC, VNDITNUM, VNDITDSC, VENDORID, DEX_ROW_ID FROM .ECM10002 WHERE PONUMBER = @PONUMBER AND ORD = @ORD ORDER BY PONUMBER ASC, ORD ASC set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ECM10002SS_1] TO [DYNGRP]
GO
