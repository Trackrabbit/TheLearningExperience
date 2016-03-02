SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_LK000002L_3] (@USERID_RS char(15), @LK_Link_No_RS int, @USERID_RE char(15), @LK_Link_No_RE int) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  LK_Link_No, DSCRIPTN, LK_Link_Date, CREATDDT, LSTDTEDT, LK_Link_Balance, USERID, LSTUSRED, DEX_ROW_ID FROM .LK000002 ORDER BY USERID DESC, LK_Link_No DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  LK_Link_No, DSCRIPTN, LK_Link_Date, CREATDDT, LSTDTEDT, LK_Link_Balance, USERID, LSTUSRED, DEX_ROW_ID FROM .LK000002 WHERE USERID = @USERID_RS AND LK_Link_No BETWEEN @LK_Link_No_RS AND @LK_Link_No_RE ORDER BY USERID DESC, LK_Link_No DESC END ELSE BEGIN SELECT TOP 25  LK_Link_No, DSCRIPTN, LK_Link_Date, CREATDDT, LSTDTEDT, LK_Link_Balance, USERID, LSTUSRED, DEX_ROW_ID FROM .LK000002 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND LK_Link_No BETWEEN @LK_Link_No_RS AND @LK_Link_No_RE ORDER BY USERID DESC, LK_Link_No DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000002L_3] TO [DYNGRP]
GO
