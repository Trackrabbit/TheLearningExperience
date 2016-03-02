SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[seeSOPTopReturnedItemsMultiCo]   @UserDate datetime,  @MaxItems int,  @ItemNumber varchar(15) = '',  @TimeUnit varchar(10) = 'Period' AS DECLARE @ITEMS table (  ITEMNMBR varchar(31) )  DECLARE @NO_LIMIT int SET @NO_LIMIT = 2147483647  INSERT INTO @ITEMS  SELECT TOP (SELECT CASE WHEN @MaxItems = 0 THEN @NO_LIMIT ELSE @MaxItems END)  ITEMNMBR  FROM   ((SELECT   ITEMNMBR, QUANTITY  FROM   SOP30200 as hdr JOIN SOP30300 as line ON hdr.SOPNUMBE = line.SOPNUMBE  WHERE   hdr.SOPTYPE = 4   AND RETUDATE BETWEEN dbo.GetBeginningDate(@UserDate, 'Fiscal', @TimeUnit, 1) AND @UserDate AND  rtrim(ITEMNMBR) LIKE   CASE WHEN rtrim(@ItemNumber) = '' THEN '%'  ELSE rtrim(@ItemNumber) END) UNION ALL  SELECT   ITEMNMBR, QUANTITY  FROM   SOP10100 as hdr JOIN SOP10200 as line ON hdr.SOPNUMBE = line.SOPNUMBE  WHERE   hdr.SOPTYPE = 4   AND RETUDATE BETWEEN dbo.GetBeginningDate(@UserDate, 'Fiscal', @TimeUnit, 1) AND @UserDate AND  rtrim(ITEMNMBR) LIKE   CASE WHEN rtrim(@ItemNumber) = '' THEN '%'  ELSE rtrim(@ItemNumber) END) sub  GROUP BY  ITEMNMBR  ORDER BY  sum(QUANTITY) DESC  SELECT  db_name() as CoID,   rtrim(SOPNUMBE) as [SOP Number],  rtrim(ITEMNMBR) as [Item Number],   rtrim(ITEMDESC) as [Item Description],  QUANTITY as [Total Quantity],  rtrim(sub.LOCNCODE) as [Location Code],  QTYONHND as [QTY On Hand],  QTYORDER as [QTY Ordered],  QTYREMAI as [QTY Remaining],  rtrim(SALSTERR) as [Sales Territory],  rtrim(SLPRSNID) as [Salesperson ID] FROM   ((SELECT   hdr.SOPNUMBE, line.ITEMNMBR, ITEMDESC, QUANTITY, line.LOCNCODE, RETUDATE,   hdr.SOPTYPE, QTYONHND, QTYORDER, QTYREMAI, line.SALSTERR, line.SLPRSNID  FROM   SOP30200 as hdr JOIN SOP30300 as line ON hdr.SOPNUMBE = line.SOPNUMBE JOIN @ITEMS it on line.ITEMNMBR = it.ITEMNMBR) UNION  SELECT   hdr.SOPNUMBE, line.ITEMNMBR, ITEMDESC, QUANTITY, line.LOCNCODE, RETUDATE,   hdr.SOPTYPE, QTYONHND, QTYORDER, QTYREMAI, line.SALSTERR, line.SLPRSNID  FROM   SOP10100 as hdr JOIN SOP10200 as line ON hdr.SOPNUMBE = line.SOPNUMBE JOIN @ITEMS it on line.ITEMNMBR = it.ITEMNMBR) sub WHERE   sub.RETUDATE BETWEEN dbo.GetBeginningDate(@UserDate, 'Fiscal', @TimeUnit, 1) AND @UserDate AND  sub.SOPTYPE = 4 AND   rtrim(ITEMNMBR) LIKE   CASE WHEN rtrim(@ItemNumber) = '' THEN '%'  ELSE rtrim(@ItemNumber) END ORDER BY  QUANTITY DESC, ITEMNMBR ASC   
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopReturnedItemsMultiCo] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopReturnedItemsMultiCo] TO [rpt_executive]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopReturnedItemsMultiCo] TO [rpt_materials manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopReturnedItemsMultiCo] TO [rpt_operations manager]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopReturnedItemsMultiCo] TO [rpt_order processor]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopReturnedItemsMultiCo] TO [rpt_shipping and receiving]
GO
GRANT EXECUTE ON  [dbo].[seeSOPTopReturnedItemsMultiCo] TO [rpt_warehouse manager]
GO
