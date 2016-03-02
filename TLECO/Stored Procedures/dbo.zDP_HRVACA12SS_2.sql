SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRVACA12SS_2] (@EMPID_I char(15), @IDATE_I datetime) AS  set nocount on SELECT TOP 1  IDATE_I, EMPID_I, STR30DUMMY_I, DEX_ROW_ID FROM .HRVACA12 WHERE EMPID_I = @EMPID_I AND IDATE_I = @IDATE_I ORDER BY EMPID_I ASC, IDATE_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRVACA12SS_2] TO [DYNGRP]
GO
