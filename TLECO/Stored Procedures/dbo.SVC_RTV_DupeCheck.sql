SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_RTV_DupeCheck](@IN_ItemNumber char(31),  @IN_SerialNumber char(21),  @OUT_RTV_Number char(15) output,  @OUT_RTV_Line numeric(19,5) output) as if exists(select * from SVC05602   where ITEMNMBR = @IN_ItemNumber and   SERLNMBR = @IN_SerialNumber   )  begin  select @OUT_RTV_Number = RTV_Number, @OUT_RTV_Line = RTV_Line from SVC05602   where ITEMNMBR = @IN_ItemNumber and   SERLNMBR = @IN_SerialNumber   end else  begin  select @OUT_RTV_Number = 'None'  end  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RTV_DupeCheck] TO [DYNGRP]
GO
