SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05501SI] (@RETTYPE char(11), @DSCRIPTN char(31), @RETSTAT char(3), @Received_Status char(3), @Shipping_Status char(3), @Close_Status char(3), @RETPATH smallint, @VNDWARRTYPE char(11), @RTV_Type char(11), @DEPOTTYPE char(11), @ORDDOCID char(15), @CRDOCID char(15), @INVDOCID char(15), @LOCNCODE char(11), @ITLOCN char(11), @ITEMNMBR char(31), @SVC_Discrepancy_Status char(3), @SVC_RMA_Invoice_Batch_ID char(15), @SVC_RMA_Credit_Batch_ID char(15), @SVC_RMA_Order_Batch_ID char(15), @SVC_Sales_Return_Index int, @SVC_COGS_Index int, @SVC_Scrap_Index int, @SVC_Repair_Sales_Index int, @SVC_Partial_Received_Sta char(3), @SVC_Ready_To_Close_Statu char(3), @SVCSCRAPCOGREV tinyint, @QTYTYPE smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC05501 (RETTYPE, DSCRIPTN, RETSTAT, Received_Status, Shipping_Status, Close_Status, RETPATH, VNDWARRTYPE, RTV_Type, DEPOTTYPE, ORDDOCID, CRDOCID, INVDOCID, LOCNCODE, ITLOCN, ITEMNMBR, SVC_Discrepancy_Status, SVC_RMA_Invoice_Batch_ID, SVC_RMA_Credit_Batch_ID, SVC_RMA_Order_Batch_ID, SVC_Sales_Return_Index, SVC_COGS_Index, SVC_Scrap_Index, SVC_Repair_Sales_Index, SVC_Partial_Received_Sta, SVC_Ready_To_Close_Statu, SVCSCRAPCOGREV, QTYTYPE) VALUES ( @RETTYPE, @DSCRIPTN, @RETSTAT, @Received_Status, @Shipping_Status, @Close_Status, @RETPATH, @VNDWARRTYPE, @RTV_Type, @DEPOTTYPE, @ORDDOCID, @CRDOCID, @INVDOCID, @LOCNCODE, @ITLOCN, @ITEMNMBR, @SVC_Discrepancy_Status, @SVC_RMA_Invoice_Batch_ID, @SVC_RMA_Credit_Batch_ID, @SVC_RMA_Order_Batch_ID, @SVC_Sales_Return_Index, @SVC_COGS_Index, @SVC_Scrap_Index, @SVC_Repair_Sales_Index, @SVC_Partial_Received_Sta, @SVC_Ready_To_Close_Statu, @SVCSCRAPCOGREV, @QTYTYPE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05501SI] TO [DYNGRP]
GO