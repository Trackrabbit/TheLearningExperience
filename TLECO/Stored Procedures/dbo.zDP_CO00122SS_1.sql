SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00122SS_1] (@FieldsListGuid char(37), @Group_ID int, @SEQNUMBR int) AS  set nocount on SELECT TOP 1  FieldsListGuid, Group_ID, SEQNUMBR, FromDictID, FromTable, FromTablePhysicalName, FromField, FromFieldPhysicalName, ToDictID, ToTable, ToTablePhysicalName, ToField, ToFieldPhysicalName, JoinType, DEX_ROW_ID FROM .CO00122 WHERE FieldsListGuid = @FieldsListGuid AND Group_ID = @Group_ID AND SEQNUMBR = @SEQNUMBR ORDER BY FieldsListGuid ASC, Group_ID ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00122SS_1] TO [DYNGRP]
GO
