SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB12000SI] (@Navigation_ID char(15), @LNITMSEQ int, @Status_Image smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .NLB12000 (Navigation_ID, LNITMSEQ, Status_Image) VALUES ( @Navigation_ID, @LNITMSEQ, @Status_Image) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB12000SI] TO [DYNGRP]
GO
