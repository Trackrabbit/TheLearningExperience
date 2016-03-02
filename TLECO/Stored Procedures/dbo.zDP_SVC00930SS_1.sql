SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00930SS_1] (@Work_Type char(11)) AS  set nocount on SELECT TOP 1  Work_Type, Billable_Work, DSCRIPTN, svcPostToPayroll, PAYRCORD, DEX_ROW_ID FROM .SVC00930 WHERE Work_Type = @Work_Type ORDER BY Work_Type ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00930SS_1] TO [DYNGRP]
GO
