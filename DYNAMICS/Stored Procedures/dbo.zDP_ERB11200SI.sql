SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11200SI] (@Excel_Report_ID char(15), @LNITMSEQ int, @Table_Number smallint, @Field_Number smallint, @Restriction_Type smallint, @Value_Type smallint, @Apply_Restriction_To smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB11200 (Excel_Report_ID, LNITMSEQ, Table_Number, Field_Number, Restriction_Type, Value_Type, Apply_Restriction_To) VALUES ( @Excel_Report_ID, @LNITMSEQ, @Table_Number, @Field_Number, @Restriction_Type, @Value_Type, @Apply_Restriction_To) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11200SI] TO [DYNGRP]
GO
