SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB11600SI] (@SmartList_ID char(15), @GoTo_Number smallint, @LNITMSEQ int, @SmartList_Field_Number smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .SLB11600 (SmartList_ID, GoTo_Number, LNITMSEQ, SmartList_Field_Number) VALUES ( @SmartList_ID, @GoTo_Number, @LNITMSEQ, @SmartList_Field_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB11600SI] TO [DYNGRP]
GO
