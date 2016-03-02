SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20010L_1] (@Field_ID_RS int, @Field_ID_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Field_ID_RS IS NULL BEGIN SELECT TOP 25  Field_ID, FIELDNAM, FIELDTYPE, Lookup_Number, Link_Number, Required_Field, Hide_Field, Extender_List_ID, DECPLCUR, String_Format, String_Mask, Use_Mask, Max_Characters, Sort_List_CB, Calculated_Field_Type, Extender_Form_ID, DEX_ROW_ID, TXTFIELD FROM .EXT20010 ORDER BY Field_ID DESC END ELSE IF @Field_ID_RS = @Field_ID_RE BEGIN SELECT TOP 25  Field_ID, FIELDNAM, FIELDTYPE, Lookup_Number, Link_Number, Required_Field, Hide_Field, Extender_List_ID, DECPLCUR, String_Format, String_Mask, Use_Mask, Max_Characters, Sort_List_CB, Calculated_Field_Type, Extender_Form_ID, DEX_ROW_ID, TXTFIELD FROM .EXT20010 WHERE Field_ID = @Field_ID_RS ORDER BY Field_ID DESC END ELSE BEGIN SELECT TOP 25  Field_ID, FIELDNAM, FIELDTYPE, Lookup_Number, Link_Number, Required_Field, Hide_Field, Extender_List_ID, DECPLCUR, String_Format, String_Mask, Use_Mask, Max_Characters, Sort_List_CB, Calculated_Field_Type, Extender_Form_ID, DEX_ROW_ID, TXTFIELD FROM .EXT20010 WHERE Field_ID BETWEEN @Field_ID_RS AND @Field_ID_RE ORDER BY Field_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20010L_1] TO [DYNGRP]
GO
