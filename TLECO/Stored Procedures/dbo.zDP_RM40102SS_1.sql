SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM40102SS_1] (@UNIQKEY char(1)) AS  set nocount on SELECT TOP 1  UNIQKEY, NXTRNNMBR, DEX_ROW_ID FROM .RM40102 WHERE UNIQKEY = @UNIQKEY ORDER BY UNIQKEY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM40102SS_1] TO [DYNGRP]
GO