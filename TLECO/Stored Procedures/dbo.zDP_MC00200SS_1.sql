SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC00200SS_1] (@ACTINDX int, @CURNCYID char(15)) AS  set nocount on SELECT TOP 1  ACTINDX, CURNCYID, REVALUE, REVLUHOW, Post_Results_To, CurrencyTranslationType, DEX_ROW_TS, DEX_ROW_ID FROM .MC00200 WHERE ACTINDX = @ACTINDX AND CURNCYID = @CURNCYID ORDER BY ACTINDX ASC, CURNCYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC00200SS_1] TO [DYNGRP]
GO