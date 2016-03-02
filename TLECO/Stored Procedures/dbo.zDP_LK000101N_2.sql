SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_LK000101N_2] (@BS int, @Status smallint, @LK_Link_No int, @Status_RS smallint, @LK_Link_No_RS int, @Status_RE smallint, @LK_Link_No_RE int) AS  set nocount on IF @Status_RS IS NULL BEGIN SELECT TOP 25  LK_Link_No, Status, USERID, NOTEINDX, DEX_ROW_ID FROM .LK000101 WHERE ( Status = @Status AND LK_Link_No > @LK_Link_No OR Status > @Status ) ORDER BY Status ASC, LK_Link_No ASC END ELSE IF @Status_RS = @Status_RE BEGIN SELECT TOP 25  LK_Link_No, Status, USERID, NOTEINDX, DEX_ROW_ID FROM .LK000101 WHERE Status = @Status_RS AND LK_Link_No BETWEEN @LK_Link_No_RS AND @LK_Link_No_RE AND ( Status = @Status AND LK_Link_No > @LK_Link_No OR Status > @Status ) ORDER BY Status ASC, LK_Link_No ASC END ELSE BEGIN SELECT TOP 25  LK_Link_No, Status, USERID, NOTEINDX, DEX_ROW_ID FROM .LK000101 WHERE Status BETWEEN @Status_RS AND @Status_RE AND LK_Link_No BETWEEN @LK_Link_No_RS AND @LK_Link_No_RE AND ( Status = @Status AND LK_Link_No > @LK_Link_No OR Status > @Status ) ORDER BY Status ASC, LK_Link_No ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000101N_2] TO [DYNGRP]
GO