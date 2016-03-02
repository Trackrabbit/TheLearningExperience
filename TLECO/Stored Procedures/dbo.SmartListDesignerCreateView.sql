SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SmartListDesignerCreateView] @FavorateDicID int, @FavoriteTye int as  Begin  DECLARE @WFSTATUS int,  @SqlQuery1 varchar(8000),  @SqlQuery2 varchar(8000),  @SqlQuery3 varchar(8000),  @SqlQuery4 varchar(8000),  @ViewName varchar(100),  @sql   varchar(8000),  @COMPDBNAME varchar(10)   select @sql = '', @ViewName = '', @SqlQuery1 = ''  SELECT @SqlQuery1 = substring(ViewScript,1,8000), @SqlQuery2 = substring(ViewScript,8001,16000), @SqlQuery3 = substring(ViewScript,16001,24000),   @SqlQuery4 = substring(ViewScript,24001,32000),@ViewName=RTRIM(ViewName) from DYNAMICS..ADH00100   where ASI_Favorite_Type =@FavoriteTye  and ASI_Favorite_Dict_ID =  @FavorateDicID  select @sql =  ' if exists (select * from dbo.sysobjects where id = object_id(N'+''''+'[dbo].['+ LTRIM(RTRIM(@ViewName)) +']'''+')'  select @sql = @sql +'and OBJECTPROPERTY(id, N''IsView'') = 1) drop view [dbo].['+LTRIM(RTRIM(@ViewName))+']  '  execute (@sql)   execute ('  CREATE VIEW [dbo].['+ @ViewName+'] as   ( ' + @SqlQuery1+@SqlQuery2+@SqlQuery3+@SqlQuery4 + ' ) ')   End   
GO
GRANT EXECUTE ON  [dbo].[SmartListDesignerCreateView] TO [DYNGRP]
GO
