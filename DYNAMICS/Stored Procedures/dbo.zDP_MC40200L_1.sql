SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_MC40200L_1] (@CURNCYID_RS char(15), @CURNCYID_RE char(15)) AS  set nocount on IF @CURNCYID_RS IS NULL BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, NOTEINDX, CRNCYDSC, CRNCYSYM, CNYSYMAR_1, CNYSYMAR_2, CNYSYMAR_3, CYSYMPLC, INCLSPAC, NEGSYMBL, NGSMAMPC, NEGSMPLC, DECSYMBL, DECPLCUR, THOUSSYM, CURTEXT_1, CURTEXT_2, CURTEXT_3, ISOCURRC, CURLNGID, DEX_ROW_TS, DEX_ROW_ID FROM .MC40200 ORDER BY CURNCYID DESC END ELSE IF @CURNCYID_RS = @CURNCYID_RE BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, NOTEINDX, CRNCYDSC, CRNCYSYM, CNYSYMAR_1, CNYSYMAR_2, CNYSYMAR_3, CYSYMPLC, INCLSPAC, NEGSYMBL, NGSMAMPC, NEGSMPLC, DECSYMBL, DECPLCUR, THOUSSYM, CURTEXT_1, CURTEXT_2, CURTEXT_3, ISOCURRC, CURLNGID, DEX_ROW_TS, DEX_ROW_ID FROM .MC40200 WHERE CURNCYID = @CURNCYID_RS ORDER BY CURNCYID DESC END ELSE BEGIN SELECT TOP 25  CURNCYID, CURRNIDX, NOTEINDX, CRNCYDSC, CRNCYSYM, CNYSYMAR_1, CNYSYMAR_2, CNYSYMAR_3, CYSYMPLC, INCLSPAC, NEGSYMBL, NGSMAMPC, NEGSMPLC, DECSYMBL, DECPLCUR, THOUSSYM, CURTEXT_1, CURTEXT_2, CURTEXT_3, ISOCURRC, CURLNGID, DEX_ROW_TS, DEX_ROW_ID FROM .MC40200 WHERE CURNCYID BETWEEN @CURNCYID_RS AND @CURNCYID_RE ORDER BY CURNCYID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC40200L_1] TO [DYNGRP]
GO
