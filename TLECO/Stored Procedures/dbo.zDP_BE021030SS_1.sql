SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BE021030SS_1] (@EMPID_I char(15), @INDEX1 smallint, @IINDEX_I smallint) AS  set nocount on SELECT TOP 1  EMPID_I, INDEX1, IINDEX_I, IDATE_I, IBENEFITAMOUNT_I, CHECK1_I, DSCRIPTN, DEX_ROW_ID FROM .BE021030 WHERE EMPID_I = @EMPID_I AND INDEX1 = @INDEX1 AND IINDEX_I = @IINDEX_I ORDER BY EMPID_I ASC, INDEX1 ASC, IINDEX_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BE021030SS_1] TO [DYNGRP]
GO
