SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Print_Calls_To_Web]  AS declare @callnbr char(11) declare @srvrectype smallint declare @Path varchar(255)  declare G_cursor CURSOR for select SRVRECTYPE, CALLNBR from SVC00200 where SVC00200.Print_to_Web = 1 set nocount on select @Path = RTRIM(SVC_Directory) from SVC00998 select   @callnbr = RTRIM(@callnbr)  if @Path is null or @Path = ''   return if RIGHT(@Path,1) = '\'  select @Path = SUBSTRING(@Path,1,LEN(@Path) - 1) OPEN G_cursor FETCH NEXT FROM G_cursor INTO @srvrectype, @callnbr  WHILE (@@FETCH_STATUS <> -1) begin  EXEC SVC_Print_Call_HTML @Path,@srvrectype, @callnbr  FETCH NEXT FROM G_cursor INTO @srvrectype, @callnbr  end CLOSE G_cursor DEALLOCATE G_cursor  declare H_cursor CURSOR for select SRVRECTYPE, CALLNBR from SVC30200 where SVC30200.Print_to_Web = 1 set nocount on select @Path = RTRIM(SVC_Directory) from SVC00998 select   @callnbr = RTRIM(@callnbr)  if @Path is null or @Path = ''   return if RIGHT(@Path,1) = '\'  select @Path = SUBSTRING(@Path,1,LEN(@Path) - 1) OPEN H_cursor FETCH NEXT FROM H_cursor INTO @srvrectype, @callnbr  WHILE (@@FETCH_STATUS <> -1) begin  EXEC SVC_Print_HistoryCall_HTML @Path,@srvrectype, @callnbr  FETCH NEXT FROM H_cursor INTO @srvrectype, @callnbr  end CLOSE H_cursor DEALLOCATE H_cursor   
GO
GRANT EXECUTE ON  [dbo].[SVC_Print_Calls_To_Web] TO [DYNGRP]
GO
