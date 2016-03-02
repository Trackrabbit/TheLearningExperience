SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27608SS_1] (@ME_Cancel_Password char(11)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ME_Cancel_Password, DEX_ROW_ID FROM .ME27608 WHERE ME_Cancel_Password = @ME_Cancel_Password ORDER BY ME_Cancel_Password ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27608SS_1] TO [DYNGRP]
GO
