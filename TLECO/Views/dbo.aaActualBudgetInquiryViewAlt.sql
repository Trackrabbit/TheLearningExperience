SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[aaActualBudgetInquiryViewAlt] AS SELECT aaFiscalPeriod, PERDBLNC, DEX_ROW_ID FROM dbo.aagGetBudgetBalanceForInq()    
GO
GRANT SELECT ON  [dbo].[aaActualBudgetInquiryViewAlt] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[aaActualBudgetInquiryViewAlt] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[aaActualBudgetInquiryViewAlt] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[aaActualBudgetInquiryViewAlt] TO [DYNGRP]
GO
