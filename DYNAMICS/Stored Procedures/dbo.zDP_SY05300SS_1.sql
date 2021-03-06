SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY05300SS_1] (@Language_ID smallint, @STRTYPE smallint, @UNTRSVAL char(51)) AS  set nocount on SELECT TOP 1  Language_ID, STRTYPE, UNTRSVAL, TRANSVAL, DEX_ROW_ID FROM .SY05300 WHERE Language_ID = @Language_ID AND STRTYPE = @STRTYPE AND UNTRSVAL = @UNTRSVAL ORDER BY Language_ID ASC, STRTYPE ASC, UNTRSVAL ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY05300SS_1] TO [DYNGRP]
GO
