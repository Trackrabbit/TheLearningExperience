SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_DropTableConstraints]  (  @objname varchar(255)   )  As declare   @objid integer declare @ConstraintName varchar(255) declare @SQL varchar(255) set nocount on  select @objid = id from sysobjects where name = @objname and type = 'U'  if @objid is not null BEGIN  declare G_cursor CURSOR for select CONSTRAINT_NAME   from INFORMATION_SCHEMA.CONSTRAINT_TABLE_USAGE   where TABLE_NAME = @objname   OPEN G_cursor  FETCH NEXT FROM G_cursor INTO @ConstraintName  WHILE (@@FETCH_STATUS <> -1)  begin  IF exists (select * from sysobjects where id = object_id(@ConstraintName))  BEGIN  select @SQL = 'ALTER TABLE ' + @objname + ' DROP CONSTRAINT ' + @ConstraintName   EXECUTE(@SQL)  END  FETCH NEXT FROM G_cursor INTO @ConstraintName   end  DEALLOCATE G_cursor END return     
GO
GRANT EXECUTE ON  [dbo].[SVC_DropTableConstraints] TO [DYNGRP]
GO
