SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRSAX012SS_4] (@TABLE_I smallint, @COL_I smallint, @ROW_I smallint) AS  set nocount on SELECT TOP 1  TABLE_I, ROW_I, COL_I, SALARYLOW_I, SALARYMED_I, SALARYHIGH_I, DEX_ROW_ID FROM .HRSAX012 WHERE TABLE_I = @TABLE_I AND COL_I = @COL_I AND ROW_I = @ROW_I ORDER BY TABLE_I ASC, COL_I ASC, ROW_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRSAX012SS_4] TO [DYNGRP]
GO
