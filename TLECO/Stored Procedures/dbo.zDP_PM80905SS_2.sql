SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80905SS_2] (@USERID char(15), @DOCTYPE smallint, @VCHRNMBR char(21)) AS  set nocount on SELECT TOP 1  USERID, VCHRNMBR, DOCNUMBR, DOCTYPE, DEX_ROW_ID FROM .PM80905 WHERE USERID = @USERID AND DOCTYPE = @DOCTYPE AND VCHRNMBR = @VCHRNMBR ORDER BY USERID ASC, DOCTYPE ASC, VCHRNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80905SS_2] TO [DYNGRP]
GO
