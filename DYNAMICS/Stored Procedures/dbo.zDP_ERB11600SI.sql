SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB11600SI] (@Excel_Report_ID char(15), @LNITMSEQ int, @Table_Number smallint, @Field_Number smallint, @Summary_Field tinyint, @Summary_Order smallint, @Summary_Method smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB11600 (Excel_Report_ID, LNITMSEQ, Table_Number, Field_Number, Summary_Field, Summary_Order, Summary_Method) VALUES ( @Excel_Report_ID, @LNITMSEQ, @Table_Number, @Field_Number, @Summary_Field, @Summary_Order, @Summary_Method) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB11600SI] TO [DYNGRP]
GO
