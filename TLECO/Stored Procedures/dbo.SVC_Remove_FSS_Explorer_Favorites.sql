SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Remove_FSS_Explorer_Favorites] As  declare @SQL char(255) declare @TableName char(8) declare @Dict_ID smallint  select @TableName = 'ASIEXP86' select @Dict_ID = 949  BEGIN  select @SQL = ' DELETE FROM DYNAMICS' + CHAR(46) + CHAR(46) + @TableName + ' WHERE ASI_Favorite_Dict_ID = ' + ltrim(rtrim(str(@Dict_ID)))  EXECUTE(@SQL) END  select @TableName = 'ASIEXP81' select @Dict_ID = 949  BEGIN  select @SQL = ' DELETE FROM DYNAMICS' + CHAR(46) + CHAR(46) + @TableName + ' WHERE ASI_Favorite_Dict_ID = ' + ltrim(rtrim(str(@Dict_ID)))  EXECUTE(@SQL) END  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Remove_FSS_Explorer_Favorites] TO [DYNGRP]
GO
