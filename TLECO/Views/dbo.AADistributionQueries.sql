SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[AADistributionQueries] AS select rtrim(['aaDistrQueryMstr'].[aaDistrQuery]) as 'Query ID', rtrim(['aaDistrQueryMstr'].[aaDistrQueryDescr]) as 'Description', 'Search Type' = dbo.AA_FUNC_Search_Type(['aaDistrQueryMstr'].[aaMatchType]),  ['aaDistrQueryMstr'].[aaDistrQueryID] as 'Dist Query ID'           from [AAG00300] as ['aaDistrQueryMstr'] with (NOLOCK) 
GO
GRANT SELECT ON  [dbo].[AADistributionQueries] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AADistributionQueries] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AADistributionQueries] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AADistributionQueries] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AADistributionQueries] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[AADistributionQueries] TO [rpt_certified accountant]
GO
