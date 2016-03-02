SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create    procedure [dbo].[aagGetCodeFrAndTo]  @aaBudgetTreeID int,   @aaOrder int,  @TrxTable nvarchar(30),  @aaTrxDimCodeFr nvarchar(31) output ,  @aaTrxDimCodeTo nvarchar(31) output as begin  declare @aaTrxDimCode char(31),   @aaSelectOpt int,  @aaTrxDimID int   exec('declare CCode cursor fast_forward for   select aaTrxDimID, aaSelectOpt,   aaTrxDimCodeFr, aaTrxDimCodeTo  from  '+ @TrxTable + '   where aaBudgetTreeID = ' + @aaBudgetTreeID  + ' and  aaOrder = ' + @aaOrder)  open CCode  fetch next from CCode into @aaTrxDimID,@aaSelectOpt,@aaTrxDimCodeFr,@aaTrxDimCodeTo  close CCode  deallocate CCode  if @aaSelectOpt= 0   begin  select top 1 @aaTrxDimCodeFr = aaTrxDimCode from AAG00401 where aaTrxDimID = @aaTrxDimID  order by aaTrxDimCode  select top 1 @aaTrxDimCodeTo = aaTrxDimCode from AAG00401 where aaTrxDimID = @aaTrxDimID  order by aaTrxDimCode desc  end   else if @aaSelectOpt= 1   begin  select @aaTrxDimCodeFr = @aaTrxDimCodeFr   select @aaTrxDimCodeTo = @aaTrxDimCodeTo  end   else if @aaSelectOpt = 2  begin  select @aaTrxDimCodeFr = @aaTrxDimCodeFr   select top 1 @aaTrxDimCodeTo = aaTrxDimCode from AAG00401 where aaTrxDimID = @aaTrxDimID  order by aaTrxDimCode desc  end   else if @aaSelectOpt = 3  begin  select top 1 @aaTrxDimCodeFr = aaTrxDimCode from AAG00401 where aaTrxDimID = @aaTrxDimID  order by aaTrxDimCode  select @aaTrxDimCodeTo = @aaTrxDimCodeTo  end end     
GO
GRANT EXECUTE ON  [dbo].[aagGetCodeFrAndTo] TO [DYNGRP]
GO
