SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[aaActualBudgetInquiryView]  AS SELECT ISNULL(B.YEAR1,0) as YEAR1,  A.PERIODDT,   A.aaFiscalPeriod,  A.PERDBLNC,  ISNULL(B.Actual_Amount,0) as Actual_Amount,  B.aaLvlCodeString,  A.DEX_ROW_ID  FROM (SELECT * FROM dbo.aagGetBudgetBalanceForInq()) A  LEFT OUTER JOIN (SELECT * FROM dbo.aagGetActualBalance()) B  ON A.aaFiscalPeriod=B.aaFiscalPeriod AND  A.PERIODDT = B.PERIODDT    
GO
GRANT SELECT ON  [dbo].[aaActualBudgetInquiryView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[aaActualBudgetInquiryView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[aaActualBudgetInquiryView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[aaActualBudgetInquiryView] TO [DYNGRP]
GO
