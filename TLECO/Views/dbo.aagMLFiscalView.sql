SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE VIEW [dbo].[aagMLFiscalView] AS  SELECT DISTINCT   aaCalMonth, aaCalQuarter, aaCalHalfYear,   aaCalYear, aaFiscalPeriod, aaFiscalQuarter,   aaFiscalHalfYear, aaFiscalYear  from AAG00500     
GO
GRANT SELECT ON  [dbo].[aagMLFiscalView] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[aagMLFiscalView] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[aagMLFiscalView] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[aagMLFiscalView] TO [DYNGRP]
GO
