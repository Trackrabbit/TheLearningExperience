SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE Procedure [dbo].[SVC_Check_Warranty_On_Item] (  @Warranty_Code char(11),  @Vendor_ID char(15) )  As declare @numrows int if @Vendor_ID > '' begin  SELECT @numrows = COUNT(*) FROM SVC00951   WHERE (WARRCDE = @Warranty_Code AND VENDORID = @Vendor_ID) end else begin  SELECT @numrows = COUNT(*) FROM SVC00951 WHERE SLRWARR = @Warranty_Code end  return @numrows    
GO
GRANT EXECUTE ON  [dbo].[SVC_Check_Warranty_On_Item] TO [DYNGRP]
GO
