SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


--exec DE_GetNextBRNum
CREATE Proc [dbo].[DE_GetNextBRNum]
as



BEGIN DECLARE @stored_proc_name 
char(32) 
DECLARE @retstat int 
DECLARE @param1 int 
DECLARE @param2 int 
set nocount on 
SELECT @stored_proc_name = 'cmGetLastJournalNumber' 
EXEC @retstat = @stored_proc_name @param1 OUT, @param2 OUT 
SELECT @retstat, @param1, @param2 set nocount on END 

GO
GRANT EXECUTE ON  [dbo].[DE_GetNextBRNum] TO [DYNGRP]
GO
