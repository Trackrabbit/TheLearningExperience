SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00920N_2] (@BS int, @DSCRIPTN char(31), @SRVTYPE char(11), @DSCRIPTN_RS char(31), @SRVTYPE_RS char(11), @DSCRIPTN_RE char(31), @SRVTYPE_RE char(11)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  SRVTYPE, DSCRIPTN, LABITMST, LABITMOV, LABITMDB, Hotline_Labor_Item, Travel_Labor_Item, TECHID, PMFLAG, CONTFLAG, SVC_Service_Batch_ID, SVC_Service_Document_ID, SVC_Sales_Only, SVC_S_Credit_Batch_ID, SVC_S_Credit_Document_ID, SVC_Zero_Batch_ID, SVC_Zero_Document_ID, SVC_Minimum_Labor, SVC_Minimum_Travel, SVC_Minimum_Hotline, SVC_Rounded_Labor, SVC_Rounded_Travel, SVC_Rounded_Hotline, SVC_Sales_Index_Part, SVC_Sales_Index_Labor, SVC_Sales_Index_Misc, SVC_Sales_Index_Expense, SVC_COGS_Index_Part, SVC_COGS_Index_Labor, SVC_COGS_Index_Misc, SVC_COGS_Index_Expense, SVC_Sales_Return_Index, svcPayableBatchID, svcSubcontractor, DEX_ROW_ID FROM .SVC00920 WHERE ( DSCRIPTN = @DSCRIPTN AND SRVTYPE > @SRVTYPE OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, SRVTYPE ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  SRVTYPE, DSCRIPTN, LABITMST, LABITMOV, LABITMDB, Hotline_Labor_Item, Travel_Labor_Item, TECHID, PMFLAG, CONTFLAG, SVC_Service_Batch_ID, SVC_Service_Document_ID, SVC_Sales_Only, SVC_S_Credit_Batch_ID, SVC_S_Credit_Document_ID, SVC_Zero_Batch_ID, SVC_Zero_Document_ID, SVC_Minimum_Labor, SVC_Minimum_Travel, SVC_Minimum_Hotline, SVC_Rounded_Labor, SVC_Rounded_Travel, SVC_Rounded_Hotline, SVC_Sales_Index_Part, SVC_Sales_Index_Labor, SVC_Sales_Index_Misc, SVC_Sales_Index_Expense, SVC_COGS_Index_Part, SVC_COGS_Index_Labor, SVC_COGS_Index_Misc, SVC_COGS_Index_Expense, SVC_Sales_Return_Index, svcPayableBatchID, svcSubcontractor, DEX_ROW_ID FROM .SVC00920 WHERE DSCRIPTN = @DSCRIPTN_RS AND SRVTYPE BETWEEN @SRVTYPE_RS AND @SRVTYPE_RE AND ( DSCRIPTN = @DSCRIPTN AND SRVTYPE > @SRVTYPE OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, SRVTYPE ASC END ELSE BEGIN SELECT TOP 25  SRVTYPE, DSCRIPTN, LABITMST, LABITMOV, LABITMDB, Hotline_Labor_Item, Travel_Labor_Item, TECHID, PMFLAG, CONTFLAG, SVC_Service_Batch_ID, SVC_Service_Document_ID, SVC_Sales_Only, SVC_S_Credit_Batch_ID, SVC_S_Credit_Document_ID, SVC_Zero_Batch_ID, SVC_Zero_Document_ID, SVC_Minimum_Labor, SVC_Minimum_Travel, SVC_Minimum_Hotline, SVC_Rounded_Labor, SVC_Rounded_Travel, SVC_Rounded_Hotline, SVC_Sales_Index_Part, SVC_Sales_Index_Labor, SVC_Sales_Index_Misc, SVC_Sales_Index_Expense, SVC_COGS_Index_Part, SVC_COGS_Index_Labor, SVC_COGS_Index_Misc, SVC_COGS_Index_Expense, SVC_Sales_Return_Index, svcPayableBatchID, svcSubcontractor, DEX_ROW_ID FROM .SVC00920 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND SRVTYPE BETWEEN @SRVTYPE_RS AND @SRVTYPE_RE AND ( DSCRIPTN = @DSCRIPTN AND SRVTYPE > @SRVTYPE OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, SRVTYPE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00920N_2] TO [DYNGRP]
GO
