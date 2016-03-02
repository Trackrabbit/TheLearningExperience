SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[SVC_RMA_DupeCheck](@IN_ItemNumber char(31),  @IN_SerialNumber char(21),  @OUT_RMA_Number char(15) output,  @OUT_Line_Number numeric(19,5) output,  @OutQtyType smallint = 1 output) as  if exists(select * from SVC05255  where Return_Record_Type = 1 and Return_Item_Number = @IN_ItemNumber and   Return_Serial_Number = @IN_SerialNumber and POSTED = 0)  select @OUT_RMA_Number = RETDOCID, @OUT_Line_Number = LNSEQNBR, @OutQtyType = QTYTYPE from SVC05255   where Return_Item_Number = @IN_ItemNumber and   Return_Serial_Number = @IN_SerialNumber and POSTED = 0  else  select @OUT_RMA_Number = 'None',@OUT_Line_Number = 0  return    
GO
GRANT EXECUTE ON  [dbo].[SVC_RMA_DupeCheck] TO [DYNGRP]
GO
