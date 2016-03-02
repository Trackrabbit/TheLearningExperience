SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_RTV_UpdateSupersession] (  @EquipID integer output,  @SerialNumber char(21),  @ItemNumber char(31),  @Reference char(31),  @UserID char(15) ) AS declare  @OldSerialNumber char(21),  @OldItemNumber char(31),  @OldReference char(31)  if exists(select * from SVC00300 where EQUIPID = @EquipID)  begin  select @OldSerialNumber = SERLNMBR, @OldItemNumber = ITEMNMBR, @OldReference = REFRENCE from SVC00300 where EQUIPID  =  @EquipID  if @OldSerialNumber <> @SerialNumber or @OldItemNumber <> @ItemNumber  insert into SVC00302 select @EquipID,@SerialNumber, @ItemNumber, @Reference,  @EquipID, @OldSerialNumber, @OldItemNumber, isnull(@OldReference,''), CONVERT(char(12),GETDATE(),102), @UserID  update SVC00300 set SERLNMBR = @SerialNumber, SVC_Serial_ID = @SerialNumber, ITEMNMBR = @ItemNumber where EQUIPID = @EquipID  exec SVC_Create_Serial_Audit @EquipID,'',@OldSerialNumber,@OldItemNumber,'Updated RTV Supersession',@UserID  end  else  select @EquipID = 0  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_UpdateSupersession] TO [DYNGRP]
GO
