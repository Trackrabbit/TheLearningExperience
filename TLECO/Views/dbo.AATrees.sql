SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[AATrees] AS select rtrim(['aaTreeMstr'].[aaTree]) as 'Tree', 'Tree Type' = dbo.AA_FUNC_Tree_Type(['aaTreeMstr'].[aaLinkType]), rtrim(['aaTrxDimMstr'].[aaTrxDim]) as 'Trx Dimension', rtrim(['aaTreeMstr'].[aaTreeDescr]) as 'Description', 'Main Tree' = dbo.DYN_FUNC_Boolean_All(['aaTreeMstr'].[aaTreeMain]),  ['aaTreeMstr'].[aaDimID] as 'Dim ID', ['aaTreeMstr'].[aaTreeID] as 'Tree ID', 'Tree Includes All Records' = dbo.DYN_FUNC_Boolean_All(['aaTreeMstr'].[aaTreeInclAllRec])           from [AAG00600] as ['aaTreeMstr'] with (NOLOCK) left outer join [AAG00400] as ['aaTrxDimMstr'] with (NOLOCK) on ['aaTreeMstr'].[aaDimID] = ['aaTrxDimMstr'].[aaTrxDimID] 
GO
GRANT SELECT ON  [dbo].[AATrees] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AATrees] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AATrees] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AATrees] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AATrees] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[AATrees] TO [rpt_certified accountant]
GO
