SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SUSSTRSS_1] (@IINDEX_I smallint) AS  set nocount on SELECT TOP 1  IINDEX_I, DSCRIPTN, DEX_ROW_ID FROM .SUSSTR WHERE IINDEX_I = @IINDEX_I ORDER BY IINDEX_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SUSSTRSS_1] TO [DYNGRP]
GO