SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_HR3APP99SS_1] (@APPLICANTNUMBER_I numeric(19,5)) AS  set nocount on SELECT TOP 1  APPLICANTNUMBER_I, DEX_ROW_ID FROM .HR3APP99 WHERE APPLICANTNUMBER_I = @APPLICANTNUMBER_I ORDER BY APPLICANTNUMBER_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR3APP99SS_1] TO [DYNGRP]
GO
