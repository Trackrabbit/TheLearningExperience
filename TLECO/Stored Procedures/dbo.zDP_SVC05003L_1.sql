SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05003L_1] (@RTV_Type_RS char(11), @RTV_Type_RE char(11)) AS  set nocount on IF @RTV_Type_RS IS NULL BEGIN SELECT TOP 25  RTV_Type, DSCRIPTN, ITLOCN, LOCNCODE, RTV_Return_Status, RTV_Shipping_Status, RTV_Received_Status, RTV_Closed_Status, RTV_Routing, SVC_Purchase_Index, SVC_Cost_Index, SVC_Reimbursement_Index, SVC_Ready_To_Ship_Status, SVC_Partial_Shipped_Stat, SVC_Partial_Received_Sta, DEX_ROW_ID FROM .SVC05003 ORDER BY RTV_Type DESC END ELSE IF @RTV_Type_RS = @RTV_Type_RE BEGIN SELECT TOP 25  RTV_Type, DSCRIPTN, ITLOCN, LOCNCODE, RTV_Return_Status, RTV_Shipping_Status, RTV_Received_Status, RTV_Closed_Status, RTV_Routing, SVC_Purchase_Index, SVC_Cost_Index, SVC_Reimbursement_Index, SVC_Ready_To_Ship_Status, SVC_Partial_Shipped_Stat, SVC_Partial_Received_Sta, DEX_ROW_ID FROM .SVC05003 WHERE RTV_Type = @RTV_Type_RS ORDER BY RTV_Type DESC END ELSE BEGIN SELECT TOP 25  RTV_Type, DSCRIPTN, ITLOCN, LOCNCODE, RTV_Return_Status, RTV_Shipping_Status, RTV_Received_Status, RTV_Closed_Status, RTV_Routing, SVC_Purchase_Index, SVC_Cost_Index, SVC_Reimbursement_Index, SVC_Ready_To_Ship_Status, SVC_Partial_Shipped_Stat, SVC_Partial_Received_Sta, DEX_ROW_ID FROM .SVC05003 WHERE RTV_Type BETWEEN @RTV_Type_RS AND @RTV_Type_RE ORDER BY RTV_Type DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05003L_1] TO [DYNGRP]
GO
