SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA01002L_2] (@USERID_RS char(15), @PURGEDATE_RS datetime, @PURGETIME_RS datetime, @ASSETID_RS char(15), @ASSETIDSUF_RS smallint, @ASSETINDEX_RS int, @USERID_RE char(15), @PURGEDATE_RE datetime, @PURGETIME_RE datetime, @ASSETID_RE char(15), @ASSETIDSUF_RE smallint, @ASSETINDEX_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  PURGEDATE, PURGETIME, USERID, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETSTATUS, ASSETSTATDT, DEX_ROW_ID FROM .FA01002 ORDER BY USERID DESC, PURGEDATE DESC, PURGETIME DESC, ASSETID DESC, ASSETIDSUF DESC, ASSETINDEX DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  PURGEDATE, PURGETIME, USERID, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETSTATUS, ASSETSTATDT, DEX_ROW_ID FROM .FA01002 WHERE USERID = @USERID_RS AND PURGEDATE BETWEEN @PURGEDATE_RS AND @PURGEDATE_RE AND PURGETIME BETWEEN @PURGETIME_RS AND @PURGETIME_RE AND ASSETID BETWEEN @ASSETID_RS AND @ASSETID_RE AND ASSETIDSUF BETWEEN @ASSETIDSUF_RS AND @ASSETIDSUF_RE AND ASSETINDEX BETWEEN @ASSETINDEX_RS AND @ASSETINDEX_RE ORDER BY USERID DESC, PURGEDATE DESC, PURGETIME DESC, ASSETID DESC, ASSETIDSUF DESC, ASSETINDEX DESC END ELSE BEGIN SELECT TOP 25  PURGEDATE, PURGETIME, USERID, ASSETINDEX, ASSETID, ASSETIDSUF, ASSETDESC, ASSETSTATUS, ASSETSTATDT, DEX_ROW_ID FROM .FA01002 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND PURGEDATE BETWEEN @PURGEDATE_RS AND @PURGEDATE_RE AND PURGETIME BETWEEN @PURGETIME_RS AND @PURGETIME_RE AND ASSETID BETWEEN @ASSETID_RS AND @ASSETID_RE AND ASSETIDSUF BETWEEN @ASSETIDSUF_RS AND @ASSETIDSUF_RE AND ASSETINDEX BETWEEN @ASSETINDEX_RS AND @ASSETINDEX_RE ORDER BY USERID DESC, PURGEDATE DESC, PURGETIME DESC, ASSETID DESC, ASSETIDSUF DESC, ASSETINDEX DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA01002L_2] TO [DYNGRP]
GO
