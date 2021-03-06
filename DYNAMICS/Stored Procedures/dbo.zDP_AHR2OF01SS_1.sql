SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AHR2OF01SS_1] (@APPLICANTNUMBER_I numeric(19,5), @IINDEX_I smallint, @BENEFIT char(7)) AS  set nocount on SELECT TOP 1  APPLICANTNUMBER_I, IINDEX_I, BENEFIT, DEX_ROW_ID FROM .AHR2OF01 WHERE APPLICANTNUMBER_I = @APPLICANTNUMBER_I AND IINDEX_I = @IINDEX_I AND BENEFIT = @BENEFIT ORDER BY APPLICANTNUMBER_I ASC, IINDEX_I ASC, BENEFIT ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2OF01SS_1] TO [DYNGRP]
GO
