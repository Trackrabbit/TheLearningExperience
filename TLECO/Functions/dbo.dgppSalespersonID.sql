SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[dgppSalespersonID]  (  @action int,  @SalespersonID varchar(15),  @ModuleID int  )  RETURNS varchar(2000) AS BEGIN   DECLARE @COMPID varchar(5),  @ActionType varchar(15),  @ModIdString varchar(15),  @FunctionName varchar(50),  @EncodedSalespersonID varchar(255),  @URIstring varchar(255)  select @COMPID = DB_NAME()   if @action=1  select @ActionType = 'OPEN'  else  select @ActionType = 'OPEN'   select @EncodedSalespersonID = DYNAMICS.dbo.encodeUrlString(rtrim(@SalespersonID));   if @ModuleID < 1  select @ModIdString = '2'  else  select @ModIdString = ltrim(str(@ModuleID))  select @URIstring = '&Act=' + @ActionType + '&Func=OpenSlsprsn' + '&SLPRSNID=' + ltrim(@EncodedSalespersonID) + '&ModuleID=' + @ModIdString   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[dgppSalespersonID] TO [DYNGRP]
GO
