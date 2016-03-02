SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_Update_Equip_Infos] (@EquipID int,  @ShipDate datetime)  As  declare @SLRWARR char(11)  declare @SLRWEND datetime  declare @SLRWSTART datetime declare @WarrantyDays integer declare @Do_Seller_Warranty smallint declare @Do_Vendor_Warranty smallint declare @VendorID char(15), @WARRCDE char(11)   update SVC00300 with (rowlock) set Shipped_Date = @ShipDate, INSTDTE = @ShipDate where EQUIPID = @EquipID select  @Do_Vendor_Warranty = SVC_Vendor_Warranty_Flag, @Do_Seller_Warranty = SVC_Seller_Warranty_Flag from SVC00998 select @SLRWARR = SLRWARR, @WARRCDE = WARRCDE, @VendorID = isnull(VENDORID, '') from SVC00300 where EQUIPID = @EquipID   if @Do_Seller_Warranty > 1 and @SLRWARR > ''  BEGIN  select @WarrantyDays = WRNTYDYS from SVC00906 where WARRCDE = @SLRWARR and VENDORID = ''   select @WarrantyDays = isnull(@WarrantyDays,0)  update SVC00300 with (rowlock) set SLRWSTART = @ShipDate, SLRWEND = DATEADD(day,@WarrantyDays,@ShipDate) where EQUIPID = @EquipID  END   if @Do_Vendor_Warranty = 3 and (@WARRCDE > '')  BEGIN  select @WarrantyDays = WRNTYDYS from SVC00906 where WARRCDE = @WARRCDE and VENDORID = @VendorID   select @WarrantyDays = isnull(@WarrantyDays,0)  update SVC00300 with (rowlock) set WARRSTART = @ShipDate, WARREND = DATEADD(day,@WarrantyDays,@ShipDate) where EQUIPID = @EquipID  END return     
GO
GRANT EXECUTE ON  [dbo].[SVC_Update_Equip_Infos] TO [DYNGRP]
GO
