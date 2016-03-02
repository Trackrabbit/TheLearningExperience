SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11500SI] (@Excel_Report_ID char(15), @Table_Number smallint, @Field_Number smallint, @LNITMSEQ int, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB11500 (Excel_Report_ID, Table_Number, Field_Number, LNITMSEQ) VALUES ( @Excel_Report_ID, @Table_Number, @Field_Number, @LNITMSEQ) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11500SI] TO [DYNGRP]
GO
