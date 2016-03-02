SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05003L_2] (@DSCRIPTN_RS char(31), @DSCRIPTN_RE char(31)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  RTV_Type, DSCRIPTN, ITLOCN, LOCNCODE, RTV_Return_Status, RTV_Shipping_Status, RTV_Received_Status, RTV_Closed_Status, RTV_Routing, SVC_Purchase_Index, SVC_Cost_Index, SVC_Reimbursement_Index, SVC_Ready_To_Ship_Status, SVC_Partial_Shipped_Stat, SVC_Partial_Received_Sta, DEX_ROW_ID FROM .SVC05003 ORDER BY DSCRIPTN DESC, DEX_ROW_ID DESC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  RTV_Type, DSCRIPTN, ITLOCN, LOCNCODE, RTV_Return_Status, RTV_Shipping_Status, RTV_Received_Status, RTV_Closed_Status, RTV_Routing, SVC_Purchase_Index, SVC_Cost_Index, SVC_Reimbursement_Index, SVC_Ready_To_Ship_Status, SVC_Partial_Shipped_Stat, SVC_Partial_Received_Sta, DEX_ROW_ID FROM .SVC05003 WHERE DSCRIPTN = @DSCRIPTN_RS ORDER BY DSCRIPTN DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  RTV_Type, DSCRIPTN, ITLOCN, LOCNCODE, RTV_Return_Status, RTV_Shipping_Status, RTV_Received_Status, RTV_Closed_Status, RTV_Routing, SVC_Purchase_Index, SVC_Cost_Index, SVC_Reimbursement_Index, SVC_Ready_To_Ship_Status, SVC_Partial_Shipped_Stat, SVC_Partial_Received_Sta, DEX_ROW_ID FROM .SVC05003 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE ORDER BY DSCRIPTN DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05003L_2] TO [DYNGRP]
GO
