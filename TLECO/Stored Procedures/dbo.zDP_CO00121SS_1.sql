SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00121SS_1] (@FieldsListGuid char(37), @SEQNUMBR int) AS  set nocount on SELECT TOP 1  FieldsListGuid, SEQNUMBR, DefaultField, TableDictID, TableSeries, TableTechnicalName, TablePhysicalName, TableDisplayName, FieldPhysicalName, FieldDisplayName, FieldSource, FieldDataType, DecimalDigits, RelativeDecimalPosition, ShowCurrencySymbol, ShowPercentSign, CRNCYSYM, DECPLCUR, Hidden, DEX_ROW_ID FROM .CO00121 WHERE FieldsListGuid = @FieldsListGuid AND SEQNUMBR = @SEQNUMBR ORDER BY FieldsListGuid ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00121SS_1] TO [DYNGRP]
GO
