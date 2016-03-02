SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06004SS_1] (@ANALCODE char(11)) AS  set nocount on SELECT TOP 1  ANALCODE, DSCRIPTN, ROUTEID, DEX_ROW_ID FROM .SVC06004 WHERE ANALCODE = @ANALCODE ORDER BY ANALCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06004SS_1] TO [DYNGRP]
GO
