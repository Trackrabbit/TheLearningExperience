SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create PROC [dbo].[MSO_spGetCustomerShipToCardNumber]( @CustNum varchar(20), @ShipToAdr varchar(20)
                                             , @CardNum varchar(165) output, @CardID varchar (31) output, @ExpDate char(5) output)
as
begin
   select top 1 @CardNum = MSO_CardNumberPABP, @CardID = MSO_CardName, @ExpDate = MSO_CardExpDate
   from MS273527 ms where ms.CUSTNMBR = @CustNum and ms.ADRSCODE = @ShipToAdr and MSO_CardName <> 'eCheck'
end
GO
GRANT EXECUTE ON  [dbo].[MSO_spGetCustomerShipToCardNumber] TO [DYNGRP]
GO
