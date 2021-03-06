SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM00203SS_2] (@VENDORID char(15), @ACTINDX int, @Default_On_Trx tinyint, @SEQNUMBR int) AS  set nocount on SELECT TOP 1  VENDORID, DISTTYPE, SEQNUMBR, ACTINDX, Default_On_Trx, DEX_ROW_ID FROM .PM00203 WHERE VENDORID = @VENDORID AND ACTINDX = @ACTINDX AND Default_On_Trx = @Default_On_Trx AND SEQNUMBR = @SEQNUMBR ORDER BY VENDORID ASC, ACTINDX ASC, Default_On_Trx ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM00203SS_2] TO [DYNGRP]
GO
