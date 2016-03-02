SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00903SI] (@TRANSDATESTAMP datetime, @TRANSTIMESTAMP datetime, @TRANSUSERID char(15), @FMYEAR smallint, @FMPERIOD smallint, @TOYEAR smallint, @TOPERIOD smallint, @RECREAD int, @RECWRITTEN int, @RECPROCESSED int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .FA00903 (TRANSDATESTAMP, TRANSTIMESTAMP, TRANSUSERID, FMYEAR, FMPERIOD, TOYEAR, TOPERIOD, RECREAD, RECWRITTEN, RECPROCESSED) VALUES ( @TRANSDATESTAMP, @TRANSTIMESTAMP, @TRANSUSERID, @FMYEAR, @FMPERIOD, @TOYEAR, @TOPERIOD, @RECREAD, @RECWRITTEN, @RECPROCESSED) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00903SI] TO [DYNGRP]
GO