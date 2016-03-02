SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DO10103SS_1] (@SOPTYPE smallint, @SOPNUMBE char(21), @SEQNUMBR int) AS  set nocount on SELECT TOP 1  SOPTYPE, SOPNUMBE, SEQNUMBR, PROCESSELECTRONICALLY, NextElectronicNumber, DEX_ROW_ID FROM .DO10103 WHERE SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND SEQNUMBR = @SEQNUMBR ORDER BY SOPTYPE ASC, SOPNUMBE ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DO10103SS_1] TO [DYNGRP]
GO