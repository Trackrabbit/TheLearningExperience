SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40501SS_2] (@TXEXOWTH smallint, @DSCRIPTN char(31), @TAXEXWTH char(7)) AS  set nocount on SELECT TOP 1  TXEXOWTH, TAXEXWTH, DSCRIPTN, DEX_ROW_ID FROM .UPR40501 WHERE TXEXOWTH = @TXEXOWTH AND DSCRIPTN = @DSCRIPTN AND TAXEXWTH = @TAXEXWTH ORDER BY TXEXOWTH ASC, DSCRIPTN ASC, TAXEXWTH ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40501SS_2] TO [DYNGRP]
GO
