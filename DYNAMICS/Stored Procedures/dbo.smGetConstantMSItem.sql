SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[smGetConstantMSItem]  @I_cConstantName        char(255) = NULL,  @O_iConstantValue       int = NULL      output,  @O_iErrorState          int = NULL      output as  if @I_cConstantName is NULL begin  select @O_iErrorState = 20270  return end  select @O_iErrorState = 0  if rtrim(ltrim(@I_cConstantName)) = 'MS_ITEM_8' begin  select @O_iConstantValue = convert(int, 0x80000000)  return end  select  @O_iConstantValue = convert (int,  convert(binary(4),  power(2,convert(int,Value)))) from  CONSTANTS where  Name = @I_cConstantName  if @@rowcount <> 1  select @O_iErrorState = 20170   return    
GO
GRANT EXECUTE ON  [dbo].[smGetConstantMSItem] TO [DYNGRP]
GO
