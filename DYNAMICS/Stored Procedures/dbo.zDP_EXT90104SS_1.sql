SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90104SS_1] (@PRODID smallint, @FORMNAME char(79), @WINNAME char(79)) AS set nocount on SELECT TOP 1  PRODID, FORMNAME, WINNAME, WINDSPNM, Main_Window_CB, DEX_ROW_ID FROM .EXT90104 WHERE PRODID = @PRODID AND FORMNAME = @FORMNAME AND WINNAME = @WINNAME ORDER BY PRODID ASC, FORMNAME ASC, WINNAME ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90104SS_1] TO [DYNGRP]
GO