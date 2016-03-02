SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_LK000102N_1] (@BS int, @LK_Link_No int, @LK_Link_No_RS int, @LK_Link_No_RE int) AS  set nocount on IF @LK_Link_No_RS IS NULL BEGIN SELECT TOP 25  LK_Link_No, DSCRIPTN, LK_Link_Date, CREATDDT, LSTDTEDT, LK_Link_Balance, USERID, LSTUSRED, DEX_ROW_ID FROM .LK000102 WHERE ( LK_Link_No > @LK_Link_No ) ORDER BY LK_Link_No ASC END ELSE IF @LK_Link_No_RS = @LK_Link_No_RE BEGIN SELECT TOP 25  LK_Link_No, DSCRIPTN, LK_Link_Date, CREATDDT, LSTDTEDT, LK_Link_Balance, USERID, LSTUSRED, DEX_ROW_ID FROM .LK000102 WHERE LK_Link_No = @LK_Link_No_RS AND ( LK_Link_No > @LK_Link_No ) ORDER BY LK_Link_No ASC END ELSE BEGIN SELECT TOP 25  LK_Link_No, DSCRIPTN, LK_Link_Date, CREATDDT, LSTDTEDT, LK_Link_Balance, USERID, LSTUSRED, DEX_ROW_ID FROM .LK000102 WHERE LK_Link_No BETWEEN @LK_Link_No_RS AND @LK_Link_No_RE AND ( LK_Link_No > @LK_Link_No ) ORDER BY LK_Link_No ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000102N_1] TO [DYNGRP]
GO
