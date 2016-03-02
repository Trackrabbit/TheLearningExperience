SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00903SS_1] (@TRANSDATESTAMP datetime, @TRANSTIMESTAMP datetime, @TRANSUSERID char(15)) AS  set nocount on SELECT TOP 1  TRANSDATESTAMP, TRANSTIMESTAMP, TRANSUSERID, FMYEAR, FMPERIOD, TOYEAR, TOPERIOD, RECREAD, RECWRITTEN, RECPROCESSED, DEX_ROW_ID FROM .FA00903 WHERE TRANSDATESTAMP = @TRANSDATESTAMP AND TRANSTIMESTAMP = @TRANSTIMESTAMP AND TRANSUSERID = @TRANSUSERID ORDER BY TRANSDATESTAMP ASC, TRANSTIMESTAMP ASC, TRANSUSERID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00903SS_1] TO [DYNGRP]
GO