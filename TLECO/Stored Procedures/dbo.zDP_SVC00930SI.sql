SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00930SI] (@Work_Type char(11), @Billable_Work tinyint, @DSCRIPTN char(31), @svcPostToPayroll tinyint, @PAYRCORD char(7), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00930 (Work_Type, Billable_Work, DSCRIPTN, svcPostToPayroll, PAYRCORD) VALUES ( @Work_Type, @Billable_Work, @DSCRIPTN, @svcPostToPayroll, @PAYRCORD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00930SI] TO [DYNGRP]
GO
