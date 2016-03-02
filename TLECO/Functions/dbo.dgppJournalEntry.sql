SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppJournalEntry]  (  @action int,  @JRNENTRY int,  @RCTRXSEQ numeric(19,5),  @DCSTATUS int,  @DOCTYPE int   )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255)   select @FunctionName = 'OpenJournal'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @URIstring = '&Act='+@ActionType  + '&Func=' + @FunctionName   + '&JRNENTRY=' + ltrim(str(@JRNENTRY))   + '&RCTRXSEQ=' + ltrim(str(@RCTRXSEQ))  + '&DCSTATUS=' + ltrim(str(@DCSTATUS))  + '&DOCTYPE=' + ltrim(str(@DOCTYPE))  RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppJournalEntry] TO [DYNGRP]
GO
