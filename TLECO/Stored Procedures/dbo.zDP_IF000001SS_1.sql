SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IF000001SS_1] (@UNIQKEY char(1)) AS  set nocount on SELECT TOP 1  UNIQKEY, IF_Activated, IF_Distribution_Created, IF_Method, SGMTNUMB, SGMNTID, NOTEINDX, DEX_ROW_ID FROM .IF000001 WHERE UNIQKEY = @UNIQKEY ORDER BY UNIQKEY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IF000001SS_1] TO [DYNGRP]
GO