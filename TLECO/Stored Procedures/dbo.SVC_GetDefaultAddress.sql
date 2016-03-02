SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_GetDefaultAddress] (  @VendorID char(15),  @AddressCode char(15) output  ) AS if exists(select * from SVC00106 where VENDORID = @VendorID and RTV_Default_Ship_To_Loca = 1)  begin  select @AddressCode =  ADRSCODE from SVC00106 where VENDORID = @VendorID and RTV_Default_Ship_To_Loca = 1  end else  begin  select @AddressCode = ADRSCODE from PM00300 where VENDORID = @VendorID order by DEX_ROW_ID desc  end    
GO
GRANT EXECUTE ON  [dbo].[SVC_GetDefaultAddress] TO [DYNGRP]
GO
