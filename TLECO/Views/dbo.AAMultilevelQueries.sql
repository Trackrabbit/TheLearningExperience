SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[AAMultilevelQueries] AS select rtrim(['aaMLQueryMstr'].[aaMLQuery]) as 'Query ID', rtrim(['aaMLQueryMstr'].[aaMLQueryDescr]) as 'Description', 'Search Type' = dbo.AA_FUNC_Search_Type(['aaMLQueryMstr'].[aaMatchType]),  ['aaMLQueryMstr'].[aaMLQueryID] as 'MLQ Query ID'           from [AAG00310] as ['aaMLQueryMstr'] with (NOLOCK) 
GO
GRANT SELECT ON  [dbo].[AAMultilevelQueries] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAMultilevelQueries] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAMultilevelQueries] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAMultilevelQueries] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AAMultilevelQueries] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[AAMultilevelQueries] TO [rpt_certified accountant]
GO
