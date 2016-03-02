SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC00200SI] (@ACTINDX int, @CURNCYID char(15), @REVALUE tinyint, @REVLUHOW smallint, @Post_Results_To smallint, @CurrencyTranslationType smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .MC00200 (ACTINDX, CURNCYID, REVALUE, REVLUHOW, Post_Results_To, CurrencyTranslationType) VALUES ( @ACTINDX, @CURNCYID, @REVALUE, @REVLUHOW, @Post_Results_To, @CurrencyTranslationType) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC00200SI] TO [DYNGRP]
GO
