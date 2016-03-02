SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05004SI] (@VENDORID char(15), @ITEMNMBR char(31), @RTV_Type char(11), @Dollar_Or_Percent_Reimbu_1 char(1), @Dollar_Or_Percent_Reimbu_2 char(1), @Dollar_Or_Percent_Reimbu_3 char(1), @Dollar_Or_Percent_Reimbu_4 char(1), @Reimbursement_Amount_1 numeric(19,5), @Reimbursement_Amount_2 numeric(19,5), @Reimbursement_Amount_3 numeric(19,5), @Reimbursement_Amount_4 numeric(19,5), @Reimbursement_NTE_1 numeric(19,5), @Reimbursement_NTE_2 numeric(19,5), @Reimbursement_NTE_3 numeric(19,5), @Reimbursement_NTE_4 numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC05004 (VENDORID, ITEMNMBR, RTV_Type, Dollar_Or_Percent_Reimbu_1, Dollar_Or_Percent_Reimbu_2, Dollar_Or_Percent_Reimbu_3, Dollar_Or_Percent_Reimbu_4, Reimbursement_Amount_1, Reimbursement_Amount_2, Reimbursement_Amount_3, Reimbursement_Amount_4, Reimbursement_NTE_1, Reimbursement_NTE_2, Reimbursement_NTE_3, Reimbursement_NTE_4) VALUES ( @VENDORID, @ITEMNMBR, @RTV_Type, @Dollar_Or_Percent_Reimbu_1, @Dollar_Or_Percent_Reimbu_2, @Dollar_Or_Percent_Reimbu_3, @Dollar_Or_Percent_Reimbu_4, @Reimbursement_Amount_1, @Reimbursement_Amount_2, @Reimbursement_Amount_3, @Reimbursement_Amount_4, @Reimbursement_NTE_1, @Reimbursement_NTE_2, @Reimbursement_NTE_3, @Reimbursement_NTE_4) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05004SI] TO [DYNGRP]
GO
