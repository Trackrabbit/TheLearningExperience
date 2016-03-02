SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00123SS_1] (@FieldsListGuid char(37), @ConditionsGuid char(37), @SEQNUMBR int) AS  set nocount on SELECT TOP 1  FieldsListGuid, ConditionsGuid, SEQNUMBR, FromTable, FromField, FromDictID, FromFieldListSequence, ToTable, ToField, ToDictID, ToFieldListSequence, FieldDataType, FieldComparison, QueryOperator, QueryConditon, StringFilter_1, StringFilter_2, IntegerFilter_1, IntegerFilter_2, NumericFilter_1, NumericFilter_2, DateFilter_1, DateFilter_2, TimeFilter_1, TimeFilter_2, EnumFilter, DEX_ROW_ID FROM .CO00123 WHERE FieldsListGuid = @FieldsListGuid AND ConditionsGuid = @ConditionsGuid AND SEQNUMBR = @SEQNUMBR ORDER BY FieldsListGuid ASC, ConditionsGuid ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00123SS_1] TO [DYNGRP]
GO
