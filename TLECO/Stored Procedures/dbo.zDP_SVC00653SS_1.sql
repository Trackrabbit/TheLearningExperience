SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00653SS_1] (@OPTTYPE char(11)) AS  set nocount on SELECT TOP 1  OPTTYPE, DSCRIPTN, DEX_ROW_ID FROM .SVC00653 WHERE OPTTYPE = @OPTTYPE ORDER BY OPTTYPE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00653SS_1] TO [DYNGRP]
GO
