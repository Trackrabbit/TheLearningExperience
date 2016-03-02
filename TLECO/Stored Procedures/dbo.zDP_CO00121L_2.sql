SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00121L_2] (@FieldsListGuid_RS char(37), @DefaultField_RS tinyint, @SEQNUMBR_RS int, @FieldsListGuid_RE char(37), @DefaultField_RE tinyint, @SEQNUMBR_RE int) AS  set nocount on IF @FieldsListGuid_RS IS NULL BEGIN SELECT TOP 25  FieldsListGuid, SEQNUMBR, DefaultField, TableDictID, TableSeries, TableTechnicalName, TablePhysicalName, TableDisplayName, FieldPhysicalName, FieldDisplayName, FieldSource, FieldDataType, DecimalDigits, RelativeDecimalPosition, ShowCurrencySymbol, ShowPercentSign, CRNCYSYM, DECPLCUR, Hidden, DEX_ROW_ID FROM .CO00121 ORDER BY FieldsListGuid DESC, DefaultField DESC, SEQNUMBR DESC END ELSE IF @FieldsListGuid_RS = @FieldsListGuid_RE BEGIN SELECT TOP 25  FieldsListGuid, SEQNUMBR, DefaultField, TableDictID, TableSeries, TableTechnicalName, TablePhysicalName, TableDisplayName, FieldPhysicalName, FieldDisplayName, FieldSource, FieldDataType, DecimalDigits, RelativeDecimalPosition, ShowCurrencySymbol, ShowPercentSign, CRNCYSYM, DECPLCUR, Hidden, DEX_ROW_ID FROM .CO00121 WHERE FieldsListGuid = @FieldsListGuid_RS AND DefaultField BETWEEN @DefaultField_RS AND @DefaultField_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY FieldsListGuid DESC, DefaultField DESC, SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  FieldsListGuid, SEQNUMBR, DefaultField, TableDictID, TableSeries, TableTechnicalName, TablePhysicalName, TableDisplayName, FieldPhysicalName, FieldDisplayName, FieldSource, FieldDataType, DecimalDigits, RelativeDecimalPosition, ShowCurrencySymbol, ShowPercentSign, CRNCYSYM, DECPLCUR, Hidden, DEX_ROW_ID FROM .CO00121 WHERE FieldsListGuid BETWEEN @FieldsListGuid_RS AND @FieldsListGuid_RE AND DefaultField BETWEEN @DefaultField_RS AND @DefaultField_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY FieldsListGuid DESC, DefaultField DESC, SEQNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00121L_2] TO [DYNGRP]
GO