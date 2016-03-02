SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppJournalInquiry]  (  @action int,  @JRNENTRY int,  @RCTRXSEQ numeric(19,5),  @YEAR1 smallint,  @TRXDATE datetime  )  RETURNS varchar(2000) AS BEGIN   DECLARE @ActionType varchar(15),  @FunctionName varchar(50),  @URIstring varchar(255)   select @FunctionName = 'OpenJournalInq'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @URIstring = '&Act='+@ActionType  + '&Func=' + @FunctionName   + '&JRNENTRY=' + ltrim(str(@JRNENTRY))   + '&RCTRXSEQ=' + ltrim(str(@RCTRXSEQ))  + '&YEAR1=' + ltrim(str(@YEAR1))  + '&TRXDATE=' + rtrim(convert(char,@TRXDATE, 101))  RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppJournalInquiry] TO [DYNGRP]
GO
