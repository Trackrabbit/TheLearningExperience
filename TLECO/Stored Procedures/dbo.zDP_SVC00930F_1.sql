SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00930F_1] (@Work_Type_RS char(11), @Work_Type_RE char(11)) AS  set nocount on IF @Work_Type_RS IS NULL BEGIN SELECT TOP 25  Work_Type, Billable_Work, DSCRIPTN, svcPostToPayroll, PAYRCORD, DEX_ROW_ID FROM .SVC00930 ORDER BY Work_Type ASC END ELSE IF @Work_Type_RS = @Work_Type_RE BEGIN SELECT TOP 25  Work_Type, Billable_Work, DSCRIPTN, svcPostToPayroll, PAYRCORD, DEX_ROW_ID FROM .SVC00930 WHERE Work_Type = @Work_Type_RS ORDER BY Work_Type ASC END ELSE BEGIN SELECT TOP 25  Work_Type, Billable_Work, DSCRIPTN, svcPostToPayroll, PAYRCORD, DEX_ROW_ID FROM .SVC00930 WHERE Work_Type BETWEEN @Work_Type_RS AND @Work_Type_RE ORDER BY Work_Type ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00930F_1] TO [DYNGRP]
GO
