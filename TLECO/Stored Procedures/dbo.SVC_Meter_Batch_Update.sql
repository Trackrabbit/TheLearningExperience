SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Meter_Batch_Update](  @EquipID integer,  @BatchID char(15),  @CustomerID char(15),  @UserID char(15),  @Date datetime,  @Description char(21),  @AddressCode char(15),  @Meter1 integer,  @Meter2 integer,  @Meter3 integer,  @Meter4 integer,  @Meter5 integer  ) as  declare @NextLine smallint if @Meter1 > 0 or @Meter2 > 0 or @Meter3 > 0 or @Meter4 > 0 or @Meter5 > 0  begin  if exists(select * from SVC10301 where @EquipID = EQUIPID)  begin  update SVC10301 set Meters_1 = @Meter1,Meters_2 = @Meter2,Meters_3 = @Meter3,Meters_4 = @Meter4,Meters_5 = @Meter5  where @EquipID = EQUIPID  end  else  begin  select @NextLine = max(a.LineNumber) from SVC10301 a where @BatchID = BACHNUMB  select @NextLine = isnull(@NextLine,0) +1  insert SVC10301 values(@BatchID,  @NextLine,  @UserID,  @EquipID,  @CustomerID,  @AddressCode,  @Meter1,  @Meter2,  @Meter3,  @Meter4,  @Meter5,  0,0,0,0,0)      end  end else  begin  delete SVC10301 where @EquipID = EQUIPID  end    
GO
GRANT EXECUTE ON  [dbo].[SVC_Meter_Batch_Update] TO [DYNGRP]
GO
