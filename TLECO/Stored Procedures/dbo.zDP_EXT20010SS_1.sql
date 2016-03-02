SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20010SS_1] (@Field_ID int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Field_ID, FIELDNAM, FIELDTYPE, Lookup_Number, Link_Number, Required_Field, Hide_Field, Extender_List_ID, DECPLCUR, String_Format, String_Mask, Use_Mask, Max_Characters, Sort_List_CB, Calculated_Field_Type, Extender_Form_ID, DEX_ROW_ID, TXTFIELD FROM .EXT20010 WHERE Field_ID = @Field_ID ORDER BY Field_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20010SS_1] TO [DYNGRP]
GO
