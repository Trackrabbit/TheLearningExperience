SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM40401SS_2] (@SETUPKEY smallint) AS  set nocount on SELECT TOP 1  RMDTYPAL, DOCDESCR, DOCABREV, DOCNUMBR, SETUPKEY, DEX_ROW_ID FROM .RM40401 WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM40401SS_2] TO [DYNGRP]
GO
