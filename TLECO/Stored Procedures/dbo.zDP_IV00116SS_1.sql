SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00116SS_1] (@ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  ITEMNMBR, PrintPhaseComp, DEX_ROW_ID FROM .IV00116 WHERE ITEMNMBR = @ITEMNMBR ORDER BY ITEMNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00116SS_1] TO [DYNGRP]
GO
