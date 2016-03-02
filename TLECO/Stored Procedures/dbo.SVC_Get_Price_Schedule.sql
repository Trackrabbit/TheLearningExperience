SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Get_Price_Schedule] (   @TechID char(11),   @CallNumber char(11),   @RecType Integer,  @Customer char(11),  @Item char(31),  @PriceLevel char(11) output  ) as if exists(select * from SVC00100 where TECHID = @TechID)  select @PriceLevel = PRCLEVEL from SVC00100 where TECHID = @TechID if exists(select * from SVC00200 where CALLNBR = @CallNumber and SRVRECTYPE = @RecType)  if @PriceLevel <= '' select @PriceLevel = PRICELVL from SVC00200   where CALLNBR = @CallNumber and SRVRECTYPE = @RecType if exists(select * from RM00101 where CUSTNMBR = @Customer)  if @PriceLevel <= '' select @PriceLevel = PRCLEVEL from RM00101 where CUSTNMBR = @Customer if @PriceLevel <= '' select @PriceLevel = PRCLEVEL from IV00101 where ITEMNMBR = @Item if @PriceLevel > ''  return 0 else  return -1    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Price_Schedule] TO [DYNGRP]
GO
