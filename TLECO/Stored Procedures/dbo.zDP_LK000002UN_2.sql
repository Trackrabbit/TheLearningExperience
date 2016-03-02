SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_LK000002UN_2] (@BS int, @LK_Link_Date datetime, @LK_Link_No int, @LK_Link_Date_RS datetime, @LK_Link_No_RS int, @LK_Link_Date_RE datetime, @LK_Link_No_RE int) AS  set nocount on IF @LK_Link_Date_RS IS NULL BEGIN SELECT TOP 25  LK_Link_No, DSCRIPTN, LK_Link_Date, CREATDDT, LSTDTEDT, LK_Link_Balance, USERID, LSTUSRED, DEX_ROW_ID FROM .LK000002 WHERE ( LK_Link_Date = @LK_Link_Date AND LK_Link_No > @LK_Link_No OR LK_Link_Date > @LK_Link_Date ) ORDER BY LK_Link_Date ASC, LK_Link_No ASC, DEX_ROW_ID ASC END ELSE IF @LK_Link_Date_RS = @LK_Link_Date_RE BEGIN SELECT TOP 25  LK_Link_No, DSCRIPTN, LK_Link_Date, CREATDDT, LSTDTEDT, LK_Link_Balance, USERID, LSTUSRED, DEX_ROW_ID FROM .LK000002 WHERE LK_Link_Date = @LK_Link_Date_RS AND LK_Link_No BETWEEN @LK_Link_No_RS AND @LK_Link_No_RE AND ( LK_Link_Date = @LK_Link_Date AND LK_Link_No > @LK_Link_No OR LK_Link_Date > @LK_Link_Date ) ORDER BY LK_Link_Date ASC, LK_Link_No ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  LK_Link_No, DSCRIPTN, LK_Link_Date, CREATDDT, LSTDTEDT, LK_Link_Balance, USERID, LSTUSRED, DEX_ROW_ID FROM .LK000002 WHERE LK_Link_Date BETWEEN @LK_Link_Date_RS AND @LK_Link_Date_RE AND LK_Link_No BETWEEN @LK_Link_No_RS AND @LK_Link_No_RE AND ( LK_Link_Date = @LK_Link_Date AND LK_Link_No > @LK_Link_No OR LK_Link_Date > @LK_Link_Date ) ORDER BY LK_Link_Date ASC, LK_Link_No ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000002UN_2] TO [DYNGRP]
GO
