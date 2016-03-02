SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FACNVDTLL_1] (@ASSETID_RS char(15), @ASSETIDSUF_RS smallint, @INDXLONG_RS int, @ASSETID_RE char(15), @ASSETIDSUF_RE smallint, @INDXLONG_RE int) AS  set nocount on IF @ASSETID_RS IS NULL BEGIN SELECT TOP 25  ASSETID, ASSETIDSUF, Import_Record_Type, BOOKID, INDXLONG, SEQNUMBR, ERRICON, ERMSGTXT, DEX_ROW_ID FROM .FACNVDTL ORDER BY ASSETID DESC, ASSETIDSUF DESC, INDXLONG DESC END ELSE IF @ASSETID_RS = @ASSETID_RE BEGIN SELECT TOP 25  ASSETID, ASSETIDSUF, Import_Record_Type, BOOKID, INDXLONG, SEQNUMBR, ERRICON, ERMSGTXT, DEX_ROW_ID FROM .FACNVDTL WHERE ASSETID = @ASSETID_RS AND ASSETIDSUF BETWEEN @ASSETIDSUF_RS AND @ASSETIDSUF_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE ORDER BY ASSETID DESC, ASSETIDSUF DESC, INDXLONG DESC END ELSE BEGIN SELECT TOP 25  ASSETID, ASSETIDSUF, Import_Record_Type, BOOKID, INDXLONG, SEQNUMBR, ERRICON, ERMSGTXT, DEX_ROW_ID FROM .FACNVDTL WHERE ASSETID BETWEEN @ASSETID_RS AND @ASSETID_RE AND ASSETIDSUF BETWEEN @ASSETIDSUF_RS AND @ASSETIDSUF_RE AND INDXLONG BETWEEN @INDXLONG_RS AND @INDXLONG_RE ORDER BY ASSETID DESC, ASSETIDSUF DESC, INDXLONG DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FACNVDTLL_1] TO [DYNGRP]
GO
