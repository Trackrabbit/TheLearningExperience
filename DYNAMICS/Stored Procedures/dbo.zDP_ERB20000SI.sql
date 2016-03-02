SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB20000SI] (@Excel_Report_ID char(15), @LNITMSEQ int, @Drill_Down_ID char(15), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB20000 (Excel_Report_ID, LNITMSEQ, Drill_Down_ID) VALUES ( @Excel_Report_ID, @LNITMSEQ, @Drill_Down_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB20000SI] TO [DYNGRP]
GO
