SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00970SS_1] (@ShortName char(41)) AS  set nocount on SELECT TOP 1  ShortName, LongName, Path, DEX_ROW_ID FROM .SVC00970 WHERE ShortName = @ShortName ORDER BY ShortName ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00970SS_1] TO [DYNGRP]
GO
