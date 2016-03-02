SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB10300SI] (@Excel_Report_ID char(15), @Table_Number smallint, @LNITMSEQ int, @From_Field char(81), @To_Field char(81), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB10300 (Excel_Report_ID, Table_Number, LNITMSEQ, From_Field, To_Field) VALUES ( @Excel_Report_ID, @Table_Number, @LNITMSEQ, @From_Field, @To_Field) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB10300SI] TO [DYNGRP]
GO
