SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM40000SS_1] (@DUEDATE datetime, @PONUMBER char(17)) AS  set nocount on SELECT TOP 1  VENDORID, PONUMBER, POSTATUS, DOCDATE, DUEDATE, Amount, DEX_ROW_ID FROM .CFM40000 WHERE DUEDATE = @DUEDATE AND PONUMBER = @PONUMBER ORDER BY DUEDATE ASC, PONUMBER ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM40000SS_1] TO [DYNGRP]
GO