SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM40100SS_1] (@PONUMBER char(17)) AS  set nocount on SELECT TOP 1  VENDORID, PONUMBER, POSTATUS, DOCDATE, PYMTRMID, DISGRPER, DUEGRPER, Amount, DEX_ROW_ID FROM .CFM40100 WHERE PONUMBER = @PONUMBER ORDER BY PONUMBER ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM40100SS_1] TO [DYNGRP]
GO
