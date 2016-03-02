SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00906L_2] (@DSCRIPTN_RS char(31), @DSCRIPTN_RE char(31)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  WARRCDE, DSCRIPTN, WRNTYDYS, SRVTYPE, NOTEINDX, PARTPCT, LABPCT, Addl_Pct, Vendor_Authorization, RTV_Type, ETADAYS, Vendor_Location_Code, Create_PO, METER1, METER2, METER3, RETTYPE, Vendor_Parts_Amount, Vendor_Parts_Dollar_or_P, Vendor_Labor_Amount, Vendor_Labor_Dollar_or_P, Vendor_Addl_Amount, Vendor_Addl_Dollar_or_Pc, VENDORID, DEX_ROW_ID FROM .SVC00906 ORDER BY DSCRIPTN DESC, DEX_ROW_ID DESC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  WARRCDE, DSCRIPTN, WRNTYDYS, SRVTYPE, NOTEINDX, PARTPCT, LABPCT, Addl_Pct, Vendor_Authorization, RTV_Type, ETADAYS, Vendor_Location_Code, Create_PO, METER1, METER2, METER3, RETTYPE, Vendor_Parts_Amount, Vendor_Parts_Dollar_or_P, Vendor_Labor_Amount, Vendor_Labor_Dollar_or_P, Vendor_Addl_Amount, Vendor_Addl_Dollar_or_Pc, VENDORID, DEX_ROW_ID FROM .SVC00906 WHERE DSCRIPTN = @DSCRIPTN_RS ORDER BY DSCRIPTN DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  WARRCDE, DSCRIPTN, WRNTYDYS, SRVTYPE, NOTEINDX, PARTPCT, LABPCT, Addl_Pct, Vendor_Authorization, RTV_Type, ETADAYS, Vendor_Location_Code, Create_PO, METER1, METER2, METER3, RETTYPE, Vendor_Parts_Amount, Vendor_Parts_Dollar_or_P, Vendor_Labor_Amount, Vendor_Labor_Dollar_or_P, Vendor_Addl_Amount, Vendor_Addl_Dollar_or_Pc, VENDORID, DEX_ROW_ID FROM .SVC00906 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE ORDER BY DSCRIPTN DESC, DEX_ROW_ID DESC END set nocount off  
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00906L_2] TO [DYNGRP]
GO
