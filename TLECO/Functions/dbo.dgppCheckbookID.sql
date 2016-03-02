SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppCheckbookID]  (  @action int,  @CheckbookID varchar(15)  )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @EncodedCheckbookID varchar(255),  @URIstring varchar(255)  select @COMPID = DB_NAME()   select @FunctionName = 'OpenChkBkID'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedCheckbookID = DYNAMICS.dbo.encodeUrlString(rtrim(@CheckbookID));   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +  '&CHEKBKID=' + @EncodedCheckbookID  RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppCheckbookID] TO [DYNGRP]
GO
