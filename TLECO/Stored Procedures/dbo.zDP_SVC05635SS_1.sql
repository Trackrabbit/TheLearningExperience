SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05635SS_1] (@USERID char(15), @RTV_Number char(15), @RTV_Line numeric(19,5)) AS  set nocount on SELECT TOP 1  USERID, RTV_Number, RTV_Line, RTV_Type, OFFID, VENDORID, ADRSCODE, VENDNAME, LOCNCODE, ITEMNMBR, VNDITNUM, Part_Cost, Part_Price, Labor_Cost, Labor_Price, Expense_Cost, Expense_Price, Travel_Cost, Travel_Price, Originating_Part_Cost, Originating_Part_Price, Originating_Labor_Cost, Originating_Labor_Price, Originating_Expense_Cost, Originating_ExpensePrice, Originating_Travel_Cost, Originating_Travel_Price, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, ERMSGTX2, DEX_ROW_ID FROM .SVC05635 WHERE USERID = @USERID AND RTV_Number = @RTV_Number AND RTV_Line = @RTV_Line ORDER BY USERID ASC, RTV_Number ASC, RTV_Line ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05635SS_1] TO [DYNGRP]
GO
