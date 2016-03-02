SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27652SI] (@ME_NonNegotiableWord char(17), @ME_Check_STB_FileNEW char(133), @ME_Overflow_STB_FileNEW char(133), @CHEKBKID char(15), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME27652 (ME_NonNegotiableWord, ME_Check_STB_FileNEW, ME_Overflow_STB_FileNEW, CHEKBKID) VALUES ( @ME_NonNegotiableWord, @ME_Check_STB_FileNEW, @ME_Overflow_STB_FileNEW, @CHEKBKID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27652SI] TO [DYNGRP]
GO
