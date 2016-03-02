SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05003SS_1] (@RTV_Type char(11)) AS  set nocount on SELECT TOP 1  RTV_Type, DSCRIPTN, ITLOCN, LOCNCODE, RTV_Return_Status, RTV_Shipping_Status, RTV_Received_Status, RTV_Closed_Status, RTV_Routing, SVC_Purchase_Index, SVC_Cost_Index, SVC_Reimbursement_Index, SVC_Ready_To_Ship_Status, SVC_Partial_Shipped_Stat, SVC_Partial_Received_Sta, DEX_ROW_ID FROM .SVC05003 WHERE RTV_Type = @RTV_Type ORDER BY RTV_Type ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05003SS_1] TO [DYNGRP]
GO
