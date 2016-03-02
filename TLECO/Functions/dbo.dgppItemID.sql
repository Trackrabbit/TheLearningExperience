SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppItemID]  (  @action int,  @ItemNumber varchar(30),  @LocationCode varchar(10)  )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @FunctionName varchar(50),  @EncodedItemNumber varchar(255),  @EncodedLocationCode varchar(255),  @URIstring varchar(255)  select @COMPID = DB_NAME()   select @FunctionName = 'OpenItemNmbr'   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedItemNumber = DYNAMICS.dbo.encodeUrlString(rtrim(@ItemNumber))  select @EncodedLocationCode = DYNAMICS.dbo.encodeUrlString(rtrim(@LocationCode))   select @URIstring = '&Act='+@ActionType+'&Func=' + @FunctionName +  '&ITEMNMBR=' + ltrim(@EncodedItemNumber) + '&LOCNCODE=' + ltrim(@EncodedLocationCode) + '&CallID=0&FocusWindow=true'  RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppItemID] TO [DYNGRP]
GO
