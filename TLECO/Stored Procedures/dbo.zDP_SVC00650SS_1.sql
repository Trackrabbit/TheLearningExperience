SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00650SS_1] (@PRICSHED char(11)) AS  set nocount on SELECT TOP 1  PRICSHED, PRSCHDSC, DEX_ROW_ID FROM .SVC00650 WHERE PRICSHED = @PRICSHED ORDER BY PRICSHED ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00650SS_1] TO [DYNGRP]
GO
