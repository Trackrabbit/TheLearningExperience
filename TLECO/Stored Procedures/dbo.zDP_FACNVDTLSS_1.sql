SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FACNVDTLSS_1] (@ASSETID char(15), @ASSETIDSUF smallint, @INDXLONG int) AS  set nocount on SELECT TOP 1  ASSETID, ASSETIDSUF, Import_Record_Type, BOOKID, INDXLONG, SEQNUMBR, ERRICON, ERMSGTXT, DEX_ROW_ID FROM .FACNVDTL WHERE ASSETID = @ASSETID AND ASSETIDSUF = @ASSETIDSUF AND INDXLONG = @INDXLONG ORDER BY ASSETID ASC, ASSETIDSUF ASC, INDXLONG ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FACNVDTLSS_1] TO [DYNGRP]
GO
