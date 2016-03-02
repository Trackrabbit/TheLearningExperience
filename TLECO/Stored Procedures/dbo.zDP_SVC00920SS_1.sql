SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00920SS_1] (@SRVTYPE char(11)) AS  set nocount on SELECT TOP 1  SRVTYPE, DSCRIPTN, LABITMST, LABITMOV, LABITMDB, Hotline_Labor_Item, Travel_Labor_Item, TECHID, PMFLAG, CONTFLAG, SVC_Service_Batch_ID, SVC_Service_Document_ID, SVC_Sales_Only, SVC_S_Credit_Batch_ID, SVC_S_Credit_Document_ID, SVC_Zero_Batch_ID, SVC_Zero_Document_ID, SVC_Minimum_Labor, SVC_Minimum_Travel, SVC_Minimum_Hotline, SVC_Rounded_Labor, SVC_Rounded_Travel, SVC_Rounded_Hotline, SVC_Sales_Index_Part, SVC_Sales_Index_Labor, SVC_Sales_Index_Misc, SVC_Sales_Index_Expense, SVC_COGS_Index_Part, SVC_COGS_Index_Labor, SVC_COGS_Index_Misc, SVC_COGS_Index_Expense, SVC_Sales_Return_Index, svcPayableBatchID, svcSubcontractor, DEX_ROW_ID FROM .SVC00920 WHERE SRVTYPE = @SRVTYPE ORDER BY SRVTYPE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00920SS_1] TO [DYNGRP]
GO
