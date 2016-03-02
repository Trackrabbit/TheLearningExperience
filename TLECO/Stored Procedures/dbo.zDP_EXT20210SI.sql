SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20210SI] (@Extender_Form_ID char(15), @LNITMSEQ int, @Extender_SmartList_Num smallint, @Extender_SmartList_Name char(65), @PRODID smallint, @Series_Number smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20210 (Extender_Form_ID, LNITMSEQ, Extender_SmartList_Num, Extender_SmartList_Name, PRODID, Series_Number) VALUES ( @Extender_Form_ID, @LNITMSEQ, @Extender_SmartList_Num, @Extender_SmartList_Name, @PRODID, @Series_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20210SI] TO [DYNGRP]
GO
