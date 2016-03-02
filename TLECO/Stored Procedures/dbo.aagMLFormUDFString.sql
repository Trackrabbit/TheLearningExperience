SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create   procedure [dbo].[aagMLFormUDFString]  @UDFTable nvarchar(30),  @LvlTable nvarchar(30),  @ColTable nvarchar(30) as begin  set nocount on  declare @SQLCmd nvarchar(500),  @RetCode int,  @aaColumn int,  @aaTrxDimID int,  @aaTrxDimCodeID int,  @aaUDFID int,   @aaUDFSelect tinyint,  @aaUDFString nvarchar(500),  @aaUDFStr nvarchar(800)   if exists(select name from tempdb..sysobjects where name = '##UDF'    and type = 'U') drop table ##UDF  if exists(select name from tempdb..sysobjects where name = '##UDFCodeTemp'    and type = 'U') drop table ##UDFCodeTemp   delete from AAG00317 where USERID = system_user   create table ##UDF (aaTrxDimID int,aaTrxDimCodeID int ,  aaUDFID int, aaUDFString nvarchar(500), aaUDFSelect tinyint)  set @SQLCmd = 'insert into ##UDF(aaTrxDimID,aaTrxDimCodeID,aaUDFID,aaUDFString,aaUDFSelect )   select a.aaTrxDimID, b.aaTrxDimCodeID, a.aaUDFID,  a.aaUDFString,a.aaUDFSelect  from  ' + @UDFTable + '  a join AAG01002   b on  a.aaTrxDimID = b.aaTrxDimID and a.aaUDFID = b.aaUDFID and  a.aaTrxDimID in (select aaTrxDimID from '+@ColTable+'   where aaColumn in (select aaColumn from '+@LvlTable+'  where aaUDFSelect = 1)) and a.aaUDFSelect = 1'    exec @RetCode = sp_executesql @SQLCmd   select distinct aaTrxDimCodeID  into ##UDFCodeTemp from ##UDF  insert into AAG00317(USERID ,aaTrxDimCodeID,aaUDFCodeString )  select system_user,aaTrxDimCodeID,space(10) from ##UDFCodeTemp   drop table ##UDFCodeTemp  declare CLvl cursor fast_forward for  select aaTrxDimID,aaTrxDimCodeID,aaUDFID,aaUDFString  from ##UDF order by aaTrxDimCodeID,aaUDFID  open CLvl   fetch next from CLvl into  @aaTrxDimID,@aaTrxDimCodeID,@aaUDFID,@aaUDFString  while @@fetch_status = 0  begin  set @aaUDFStr = space(1)+isnull(dbo.aagMLUDFValues(@aaTrxDimID,@aaTrxDimCodeID,@aaUDFID,@aaUDFString),space(1))  update AAG00317 set aaUDFCodeString = isnull(convert(nvarchar(800),aaUDFCodeString),space(1)) +@aaUDFStr  where USERID = system_user and  aaTrxDimCodeID = @aaTrxDimCodeID    fetch next from CLvl into  @aaTrxDimID,@aaTrxDimCodeID,@aaUDFID,@aaUDFString  end  close CLvl  deallocate CLvl   set nocount off end    
GO
GRANT EXECUTE ON  [dbo].[aagMLFormUDFString] TO [DYNGRP]
GO
