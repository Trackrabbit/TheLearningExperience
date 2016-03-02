SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240464N_1] (@BS int, @ME_Check_STB_FileNEW char(133), @ME_Check_STB_Version smallint, @LNSEQNBR numeric(19,5), @ME_Check_STB_FileNEW_RS char(133), @ME_Check_STB_Version_RS smallint, @LNSEQNBR_RS numeric(19,5), @ME_Check_STB_FileNEW_RE char(133), @ME_Check_STB_Version_RE smallint, @LNSEQNBR_RE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on IF @ME_Check_STB_FileNEW_RS IS NULL BEGIN SELECT TOP 25  ME_Check_STB_FileNEW, ME_Check_STB_Version, LNSEQNBR, MEDateModifiedString, File_Size, DEX_ROW_ID, TXTFIELD FROM .ME240464 WHERE ( ME_Check_STB_FileNEW = @ME_Check_STB_FileNEW AND ME_Check_STB_Version = @ME_Check_STB_Version AND LNSEQNBR > @LNSEQNBR OR ME_Check_STB_FileNEW = @ME_Check_STB_FileNEW AND ME_Check_STB_Version > @ME_Check_STB_Version OR ME_Check_STB_FileNEW > @ME_Check_STB_FileNEW ) ORDER BY ME_Check_STB_FileNEW ASC, ME_Check_STB_Version ASC, LNSEQNBR ASC END ELSE IF @ME_Check_STB_FileNEW_RS = @ME_Check_STB_FileNEW_RE BEGIN SELECT TOP 25  ME_Check_STB_FileNEW, ME_Check_STB_Version, LNSEQNBR, MEDateModifiedString, File_Size, DEX_ROW_ID, TXTFIELD FROM .ME240464 WHERE ME_Check_STB_FileNEW = @ME_Check_STB_FileNEW_RS AND ME_Check_STB_Version BETWEEN @ME_Check_STB_Version_RS AND @ME_Check_STB_Version_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( ME_Check_STB_FileNEW = @ME_Check_STB_FileNEW AND ME_Check_STB_Version = @ME_Check_STB_Version AND LNSEQNBR > @LNSEQNBR OR ME_Check_STB_FileNEW = @ME_Check_STB_FileNEW AND ME_Check_STB_Version > @ME_Check_STB_Version OR ME_Check_STB_FileNEW > @ME_Check_STB_FileNEW ) ORDER BY ME_Check_STB_FileNEW ASC, ME_Check_STB_Version ASC, LNSEQNBR ASC END ELSE BEGIN SELECT TOP 25  ME_Check_STB_FileNEW, ME_Check_STB_Version, LNSEQNBR, MEDateModifiedString, File_Size, DEX_ROW_ID, TXTFIELD FROM .ME240464 WHERE ME_Check_STB_FileNEW BETWEEN @ME_Check_STB_FileNEW_RS AND @ME_Check_STB_FileNEW_RE AND ME_Check_STB_Version BETWEEN @ME_Check_STB_Version_RS AND @ME_Check_STB_Version_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND ( ME_Check_STB_FileNEW = @ME_Check_STB_FileNEW AND ME_Check_STB_Version = @ME_Check_STB_Version AND LNSEQNBR > @LNSEQNBR OR ME_Check_STB_FileNEW = @ME_Check_STB_FileNEW AND ME_Check_STB_Version > @ME_Check_STB_Version OR ME_Check_STB_FileNEW > @ME_Check_STB_FileNEW ) ORDER BY ME_Check_STB_FileNEW ASC, ME_Check_STB_Version ASC, LNSEQNBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240464N_1] TO [DYNGRP]
GO
