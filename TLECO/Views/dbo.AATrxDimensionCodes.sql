SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[AATrxDimensionCodes] AS select rtrim(['aaTrxDimMstr'].[aaTrxDim]) as 'Trx Dimension', rtrim(['aaTrxDimCodeSetp'].[aaTrxDimCode]) as 'Trx Dimension Code', rtrim(['aaTrxDimCodeSetp'].[aaTrxDimCodeDescr]) as 'Description 1', rtrim(['aaMstrRecord VIEW'].[aaNode]) as 'Node', 'Inactive' = dbo.DYN_FUNC_Boolean_All(['aaTrxDimCodeSetp'].[INACTIVE]),  rtrim(['aaTrxDimCodeSetp'].[aaTrxDimCodeDescr2]) as 'Description 2', ['aaTrxDimCodeSetp'].[aaTrxDimCodeID] as 'Trx Dim Code ID', ['aaTrxDimCodeSetp'].[aaTrxDimID] as 'Trx Dim ID'           from [AAG00400] as ['aaTrxDimMstr'] with (NOLOCK) left outer join [AAG00401] as ['aaTrxDimCodeSetp'] with (NOLOCK) on ['aaTrxDimMstr'].[aaTrxDimID] = ['aaTrxDimCodeSetp'].[aaTrxDimID] left outer join [AAG00401V] as ['aaMstrRecord VIEW'] with (NOLOCK) on ['aaTrxDimMstr'].[aaTrxDimID] = ['aaMstrRecord VIEW'].[aaTrxDimID] 
GO
GRANT SELECT ON  [dbo].[AATrxDimensionCodes] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AATrxDimensionCodes] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AATrxDimensionCodes] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AATrxDimensionCodes] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AATrxDimensionCodes] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[AATrxDimensionCodes] TO [rpt_certified accountant]
GO
