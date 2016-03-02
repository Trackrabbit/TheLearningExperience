SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_MC40200SS_2] (@CRNCYDSC char(31), @CURNCYID char(15)) AS  set nocount on SELECT TOP 1  CURNCYID, CURRNIDX, NOTEINDX, CRNCYDSC, CRNCYSYM, CNYSYMAR_1, CNYSYMAR_2, CNYSYMAR_3, CYSYMPLC, INCLSPAC, NEGSYMBL, NGSMAMPC, NEGSMPLC, DECSYMBL, DECPLCUR, THOUSSYM, CURTEXT_1, CURTEXT_2, CURTEXT_3, ISOCURRC, CURLNGID, DEX_ROW_TS, DEX_ROW_ID FROM .MC40200 WHERE CRNCYDSC = @CRNCYDSC AND CURNCYID = @CURNCYID ORDER BY CRNCYDSC ASC, CURNCYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40200SS_2] TO [DYNGRP]
GO