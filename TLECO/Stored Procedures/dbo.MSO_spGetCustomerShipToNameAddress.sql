SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create PROC [dbo].[MSO_spGetCustomerShipToNameAddress](@CustNum varchar(20), @ShipToAdr varchar(20), 
@Add1  varchar(30) output, @Add2  varchar(30) output, @Add3  varchar(30) output, @City  varchar(30) output, @State  varchar(30) output, @Zip  varchar(10) output, 
@Country  varchar(20) output, @Phone  varchar(15) output, @First  varchar(50) output, @Middle  varchar(50) output, @Last  varchar(50) output)
as
begin
   select @Add1 = ADDRESS1 from MS273527 ms where ms.CUSTNMBR = @CustNum and ms.ADRSCODE = @ShipToAdr 
   select @Add2 = ADDRESS2 from MS273527 ms where ms.CUSTNMBR = @CustNum and ms.ADRSCODE = @ShipToAdr 
   select @Add3 = ADDRESS3 from MS273527 ms where ms.CUSTNMBR = @CustNum and ms.ADRSCODE = @ShipToAdr 
   select @City = CITY from MS273527 ms where ms.CUSTNMBR = @CustNum and ms.ADRSCODE = @ShipToAdr 
   select @State = STATE from MS273527 ms where ms.CUSTNMBR = @CustNum and ms.ADRSCODE = @ShipToAdr 
   select @Country = COUNTRY from MS273527 ms where ms.CUSTNMBR = @CustNum and ms.ADRSCODE = @ShipToAdr 
   select @Zip = ZIPCODE from MS273527 ms where ms.CUSTNMBR = @CustNum and ms.ADRSCODE = @ShipToAdr 
   select @Phone = PHONNAME from MS273527 ms where ms.CUSTNMBR = @CustNum and ms.ADRSCODE = @ShipToAdr 
   select @First = FRSTNAME from MS273527 ms where ms.CUSTNMBR = @CustNum and ms.ADRSCODE = @ShipToAdr 
   select @Middle = MIDLNAME from MS273527 ms where ms.CUSTNMBR = @CustNum and ms.ADRSCODE = @ShipToAdr 
   select @Last = LASTNAME from MS273527 ms where ms.CUSTNMBR = @CustNum and ms.ADRSCODE = @ShipToAdr 
end
GO
GRANT EXECUTE ON  [dbo].[MSO_spGetCustomerShipToNameAddress] TO [DYNGRP]
GO
