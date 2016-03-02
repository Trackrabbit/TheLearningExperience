SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB12100SI] (@Group_Report_ID char(15), @LNITMSEQ int, @Excel_Report_ID char(15), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB12100 (Group_Report_ID, LNITMSEQ, Excel_Report_ID) VALUES ( @Group_Report_ID, @LNITMSEQ, @Excel_Report_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB12100SI] TO [DYNGRP]
GO
