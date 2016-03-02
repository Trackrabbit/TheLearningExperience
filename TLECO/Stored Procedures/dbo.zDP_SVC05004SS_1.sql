SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05004SS_1] (@VENDORID char(15), @ITEMNMBR char(31), @RTV_Type char(11)) AS  set nocount on SELECT TOP 1  VENDORID, ITEMNMBR, RTV_Type, Dollar_Or_Percent_Reimbu_1, Dollar_Or_Percent_Reimbu_2, Dollar_Or_Percent_Reimbu_3, Dollar_Or_Percent_Reimbu_4, Reimbursement_Amount_1, Reimbursement_Amount_2, Reimbursement_Amount_3, Reimbursement_Amount_4, Reimbursement_NTE_1, Reimbursement_NTE_2, Reimbursement_NTE_3, Reimbursement_NTE_4, DEX_ROW_ID FROM .SVC05004 WHERE VENDORID = @VENDORID AND ITEMNMBR = @ITEMNMBR AND RTV_Type = @RTV_Type ORDER BY VENDORID ASC, ITEMNMBR ASC, RTV_Type ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05004SS_1] TO [DYNGRP]
GO
