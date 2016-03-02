SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[AATrxDimensions] AS select rtrim(['aaTrxDimMstr'].[aaTrxDim]) as 'Trx Dimension', 'Data Type' = dbo.AA_FUNC_Data_Type(['aaTrxDimMstr'].[aaDataType]), rtrim(['aaTrxDimMstr'].[aaTrxDimDescr]) as 'Description 1', 'Inactive' = dbo.DYN_FUNC_Boolean_All(['aaTrxDimMstr'].[INACTIVE]),  'Create New Codes In Background' = dbo.DYN_FUNC_Boolean_All(['aaTrxDimMstr'].[aaDontAskForNewCodes]), 'Create New Codes On The Fly' = dbo.DYN_FUNC_Boolean_All(['aaTrxDimMstr'].[aaAddCodesOnFly]), 'Decimal Places' = dbo.DYN_FUNC_Decimal_Places_QTYS(['aaTrxDimMstr'].[DECPLQTY]), rtrim(['aaTrxDimMstr'].[aaTrxDimDescr2]) as 'Description 2', ['aaTrxDimMstr'].[aaOrder] as 'Order', ['aaTrxDimMstr'].[aaTrxDimID] as 'Trx Dim ID', rtrim(['aaTrxDimMstr'].[UOMSCHDL]) as 'U Of M Schedule'           from [AAG00400] as ['aaTrxDimMstr'] with (NOLOCK) 
GO
GRANT SELECT ON  [dbo].[AATrxDimensions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AATrxDimensions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AATrxDimensions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AATrxDimensions] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[AATrxDimensions] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[AATrxDimensions] TO [rpt_certified accountant]
GO
