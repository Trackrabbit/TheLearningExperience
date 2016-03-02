SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240464SS_1] (@ME_Check_STB_FileNEW char(133), @ME_Check_STB_Version smallint, @LNSEQNBR numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  ME_Check_STB_FileNEW, ME_Check_STB_Version, LNSEQNBR, MEDateModifiedString, File_Size, DEX_ROW_ID, TXTFIELD FROM .ME240464 WHERE ME_Check_STB_FileNEW = @ME_Check_STB_FileNEW AND ME_Check_STB_Version = @ME_Check_STB_Version AND LNSEQNBR = @LNSEQNBR ORDER BY ME_Check_STB_FileNEW ASC, ME_Check_STB_Version ASC, LNSEQNBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240464SS_1] TO [DYNGRP]
GO
