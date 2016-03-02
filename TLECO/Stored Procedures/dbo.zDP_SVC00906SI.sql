SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00906SI] (@WARRCDE char(11), @DSCRIPTN char(31), @WRNTYDYS smallint, @SRVTYPE char(11), @NOTEINDX numeric(19,5), @PARTPCT numeric(19,5), @LABPCT numeric(19,5), @Addl_Pct numeric(19,5), @Vendor_Authorization char(31), @RTV_Type char(11), @ETADAYS smallint, @Vendor_Location_Code char(11), @Create_PO tinyint, @METER1 int, @METER2 int, @METER3 int, @RETTYPE char(11), @Vendor_Parts_Amount numeric(19,5), @Vendor_Parts_Dollar_or_P char(1), @Vendor_Labor_Amount numeric(19,5), @Vendor_Labor_Dollar_or_P char(1), @Vendor_Addl_Amount numeric(19,5), @Vendor_Addl_Dollar_or_Pc char(1), @VENDORID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00906 (WARRCDE, DSCRIPTN, WRNTYDYS, SRVTYPE, NOTEINDX, PARTPCT, LABPCT, Addl_Pct, Vendor_Authorization, RTV_Type, ETADAYS, Vendor_Location_Code, Create_PO, METER1, METER2, METER3, RETTYPE, Vendor_Parts_Amount, Vendor_Parts_Dollar_or_P, Vendor_Labor_Amount, Vendor_Labor_Dollar_or_P, Vendor_Addl_Amount, Vendor_Addl_Dollar_or_Pc, VENDORID) VALUES ( @WARRCDE, @DSCRIPTN, @WRNTYDYS, @SRVTYPE, @NOTEINDX, @PARTPCT, @LABPCT, @Addl_Pct, @Vendor_Authorization, @RTV_Type, @ETADAYS, @Vendor_Location_Code, @Create_PO, @METER1, @METER2, @METER3, @RETTYPE, @Vendor_Parts_Amount, @Vendor_Parts_Dollar_or_P, @Vendor_Labor_Amount, @Vendor_Labor_Dollar_or_P, @Vendor_Addl_Amount, @Vendor_Addl_Dollar_or_Pc, @VENDORID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00906SI] TO [DYNGRP]
GO
