SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05003SI] (@RTV_Type char(11), @DSCRIPTN char(31), @ITLOCN char(11), @LOCNCODE char(11), @RTV_Return_Status char(3), @RTV_Shipping_Status char(3), @RTV_Received_Status char(3), @RTV_Closed_Status char(3), @RTV_Routing smallint, @SVC_Purchase_Index int, @SVC_Cost_Index int, @SVC_Reimbursement_Index int, @SVC_Ready_To_Ship_Status char(3), @SVC_Partial_Shipped_Stat char(3), @SVC_Partial_Received_Sta char(3), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC05003 (RTV_Type, DSCRIPTN, ITLOCN, LOCNCODE, RTV_Return_Status, RTV_Shipping_Status, RTV_Received_Status, RTV_Closed_Status, RTV_Routing, SVC_Purchase_Index, SVC_Cost_Index, SVC_Reimbursement_Index, SVC_Ready_To_Ship_Status, SVC_Partial_Shipped_Stat, SVC_Partial_Received_Sta) VALUES ( @RTV_Type, @DSCRIPTN, @ITLOCN, @LOCNCODE, @RTV_Return_Status, @RTV_Shipping_Status, @RTV_Received_Status, @RTV_Closed_Status, @RTV_Routing, @SVC_Purchase_Index, @SVC_Cost_Index, @SVC_Reimbursement_Index, @SVC_Ready_To_Ship_Status, @SVC_Partial_Shipped_Stat, @SVC_Partial_Received_Sta) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05003SI] TO [DYNGRP]
GO
