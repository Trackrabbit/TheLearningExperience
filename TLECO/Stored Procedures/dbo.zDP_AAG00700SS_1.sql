SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG00700SS_1] (@aaOption smallint) AS  set nocount on SELECT TOP 1  aaOption, aaMultiLangStr, aaIsOptionSet, DEX_ROW_ID FROM .AAG00700 WHERE aaOption = @aaOption ORDER BY aaOption ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00700SS_1] TO [DYNGRP]
GO
