SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20141SI] (@Extender_Window_ID char(15), @LNITMSEQ int, @Condition_Number smallint, @Long_Window_Name char(101), @Long_Field_Name char(101), @Posting_Restriction smallint, @STRGA255 char(255), @DATE1 datetime, @TOTAL numeric(19,5), @TIME1 datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20141 (Extender_Window_ID, LNITMSEQ, Condition_Number, Long_Window_Name, Long_Field_Name, Posting_Restriction, STRGA255, DATE1, TOTAL, TIME1) VALUES ( @Extender_Window_ID, @LNITMSEQ, @Condition_Number, @Long_Window_Name, @Long_Field_Name, @Posting_Restriction, @STRGA255, @DATE1, @TOTAL, @TIME1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20141SI] TO [DYNGRP]
GO
