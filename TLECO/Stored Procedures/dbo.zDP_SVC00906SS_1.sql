SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00906SS_1] (@WARRCDE char(11), @VENDORID char(15)) AS  set nocount on SELECT TOP 1  WARRCDE, DSCRIPTN, WRNTYDYS, SRVTYPE, NOTEINDX, PARTPCT, LABPCT, Addl_Pct, Vendor_Authorization, RTV_Type, ETADAYS, Vendor_Location_Code, Create_PO, METER1, METER2, METER3, RETTYPE, Vendor_Parts_Amount, Vendor_Parts_Dollar_or_P, Vendor_Labor_Amount, Vendor_Labor_Dollar_or_P, Vendor_Addl_Amount, Vendor_Addl_Dollar_or_Pc, VENDORID, DEX_ROW_ID FROM .SVC00906 WHERE WARRCDE = @WARRCDE AND VENDORID = @VENDORID ORDER BY WARRCDE ASC, VENDORID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00906SS_1] TO [DYNGRP]
GO
