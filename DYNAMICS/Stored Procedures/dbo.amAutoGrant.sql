SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[amAutoGrant] @tablename char(150) output as set nocount on DECLARE @command varchar(255) SELECT @command = 'grant SELECT,INSERT,DELETE,UPDATE on ['+rtrim(@tablename)+'] to DYNGRP' EXEC (@command) DELETE FROM autotemp SELECT @command = 'insert into autotemp select name from sysobjects where name like ''zDP_'+rtrim(@tablename) + '%'''EXEC (@command) DECLARE TheCursor CURSOR FOR select 'grant EXECUTE on ['+ rtrim(name) + '] to DYNGRP' from autotemp OPEN TheCursor WHILE @@FETCH_STATUS = @@FETCH_STATUS	BEGIN FETCH NEXT FROM TheCursor INTO @command IF @@FETCH_STATUS = -2 CONTINUE IF @@FETCH_STATUS = -1 BREAK	EXEC (@command) END CLOSE TheCursor DEALLOCATE TheCursor ; SET NOCOUNT off ; 
GO
