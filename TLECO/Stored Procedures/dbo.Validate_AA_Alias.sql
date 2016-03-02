SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create PROCEDURE [dbo].[Validate_AA_Alias]  (  @AliasCode varchar(30), @Company_ID varchar(5), @OutReslt  integer OUTPUT  )  AS  declare  @SQL_Statement nvarchar(4000),  @AliasID int, @AliasID1 int, @Param_AliasID nvarchar(200)  BEGIN   select @SQL_Statement = 'select @AliasID=aaAliasID from '  + @Company_ID + '..AAG00800 where aaAlias='''+@AliasCode+''''   set @Param_AliasID = N'@AliasID int output'   EXEC sp_executesql @SQL_Statement, @Param_AliasID, @AliasID= @AliasID1 output   set @OutReslt=@AliasID1  END    
GO
GRANT EXECUTE ON  [dbo].[Validate_AA_Alias] TO [DYNGRP]
GO
