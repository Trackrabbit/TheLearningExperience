SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE Proc [dbo].[DE_GetNextBRTRNNum]
as

Declare @Num int

Select top 1 MAX(CMDNUMWK) from CM20400 



Select @Num

GO
GRANT EXECUTE ON  [dbo].[DE_GetNextBRTRNNum] TO [DYNGRP]
GO
