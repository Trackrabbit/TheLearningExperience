SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00909SS_2] (@NAME char(31)) AS  set nocount on SELECT TOP 1  SVCAREA, NAME, DEX_ROW_ID FROM .SVC00909 WHERE NAME = @NAME ORDER BY NAME ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00909SS_2] TO [DYNGRP]
GO
