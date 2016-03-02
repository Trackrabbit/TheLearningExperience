SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE        procedure [dbo].[aagBudgetValChildWithParentWin]  @aaBudgetTreeID int,  @aaLevel int,  @aaChildTrxDimCodeID int,  @CodeTable nvarchar(30),  @aaCodeSequence int,   @OVal tinyint output as begin  set nocount on  declare @aaTrxDimCodeID  int,  @aaParTrxDimID int,  @aaChildTrxDimID int,  @aaTrxDimRelType int,  @Cnt int,  @aaLevelLess int,  @SQLCmd nvarchar(2000),  @Cnt1 int  select  @aaTrxDimCodeID  = 0,  @aaParTrxDimID  = 0,  @aaChildTrxDimID = 0,  @aaTrxDimRelType = 0,  @OVal    = 1,  @Cnt   = 0,  @SQLCmd   = ''  if @aaLevel = 1  return  set @aaLevelLess = @aaLevel - 1  set @Cnt1 = @aaLevelLess  select @aaChildTrxDimID = aaTrxDimID from AAG00401   where aaTrxDimCodeID = @aaChildTrxDimCodeID  set @SQLCmd = 'declare CPar cursor fast_forward for  select aaTrxDimCodeID from ' + @CodeTable + '   where aaBudgetTreeID = ' + str(@aaBudgetTreeID) + ' and   aaCodeSequence in (select top 1 aaCodeSequence from '  + @CodeTable + ' where aaBudgetTreeID = ' + str(@aaBudgetTreeID) + ' and   aaLevel <=  ' + str(@Cnt1) + ' order by  aaCodeSequence desc )  and   aaCodeSequence <> ' + str(@aaCodeSequence)  while @Cnt1 = 0  begin  set @Cnt1 = @Cnt1 - 1  set @SQLCmd = @SQLCmd + 'union  select aaTrxDimCodeID from ' + @CodeTable + '   where aaBudgetTreeID = ' + str(@aaBudgetTreeID) + ' and   aaCodeSequence in (select top 1 aaCodeSequence from '  + @CodeTable + ' where aaBudgetTreeID = ' + str(@aaBudgetTreeID) + ' and   aaLevel <=  ' + str(@Cnt1) + ' order by  aaCodeSequence desc )   and   aaCodeSequence <> ' + str(@aaCodeSequence)  end  exec(@SQLCmd)  open CPar  fetch next from CPar into @aaTrxDimCodeID  while @@fetch_status = 0   begin  if @OVal = 1   begin  select @aaParTrxDimID = aaTrxDimID from AAG00401   where aaTrxDimCodeID = @aaTrxDimCodeID  select @aaTrxDimRelType = aaTrxDimRelType from AAG00405  where aaTrxDimID = @aaParTrxDimID and   aaRelTrxDimID = @aaChildTrxDimID  if @aaTrxDimRelType <> 1   begin   select @Cnt = count(*) from AAG00406 where   aaTrxDimID = @aaParTrxDimID and   aaTrxDimCodeID = @aaTrxDimCodeID and   aaRelTrxDimID = @aaChildTrxDimID and  aaRelTrxDimCodeID =  @aaChildTrxDimCodeID  if @Cnt = 1 set @OVal = 1 else set @OVal = 0   end   end  fetch next from CPar into @aaTrxDimCodeID  end  close CPar  deallocate CPar  set nocount off end    
GO
GRANT EXECUTE ON  [dbo].[aagBudgetValChildWithParentWin] TO [DYNGRP]
GO
