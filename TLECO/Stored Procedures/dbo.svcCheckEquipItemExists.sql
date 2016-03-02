SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[svcCheckEquipItemExists]  @ItemNumber char(31),  @SerialNumber char(21),  @CustomerNumber char(15),  @RtnCustomerNumber char(15),  @InsCustomerNumber char(15),  @nStatus smallint output  As declare @CUSTNMBR char(15)   if exists(select 1 from SVC00300 where ITEMNMBR = @ItemNumber and SERLNMBR = @SerialNumber)  select @CUSTNMBR = CUSTNMBR from SVC00300 where ITEMNMBR =  @ItemNumber and SERLNMBR = @SerialNumber else  select @nStatus = 0  if @CUSTNMBR > ''   begin  if @CUSTNMBR = @RtnCustomerNumber or @CUSTNMBR = @InsCustomerNumber  select @nStatus = 1  else if @CUSTNMBR <> @CustomerNumber  select @nStatus = 2  end  return (0)    
GO
GRANT EXECUTE ON  [dbo].[svcCheckEquipItemExists] TO [DYNGRP]
GO
