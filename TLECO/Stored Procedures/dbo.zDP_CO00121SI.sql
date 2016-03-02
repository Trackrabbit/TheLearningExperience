SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00121SI] (@FieldsListGuid char(37), @SEQNUMBR int, @DefaultField tinyint, @TableDictID smallint, @TableSeries smallint, @TableTechnicalName char(81), @TablePhysicalName char(31), @TableDisplayName char(81), @FieldPhysicalName char(31), @FieldDisplayName char(81), @FieldSource smallint, @FieldDataType smallint, @DecimalDigits smallint, @RelativeDecimalPosition tinyint, @ShowCurrencySymbol tinyint, @ShowPercentSign tinyint, @CRNCYSYM char(3), @DECPLCUR smallint, @Hidden tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CO00121 (FieldsListGuid, SEQNUMBR, DefaultField, TableDictID, TableSeries, TableTechnicalName, TablePhysicalName, TableDisplayName, FieldPhysicalName, FieldDisplayName, FieldSource, FieldDataType, DecimalDigits, RelativeDecimalPosition, ShowCurrencySymbol, ShowPercentSign, CRNCYSYM, DECPLCUR, Hidden) VALUES ( @FieldsListGuid, @SEQNUMBR, @DefaultField, @TableDictID, @TableSeries, @TableTechnicalName, @TablePhysicalName, @TableDisplayName, @FieldPhysicalName, @FieldDisplayName, @FieldSource, @FieldDataType, @DecimalDigits, @RelativeDecimalPosition, @ShowCurrencySymbol, @ShowPercentSign, @CRNCYSYM, @DECPLCUR, @Hidden) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00121SI] TO [DYNGRP]
GO
