SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2BE31SS_1] (@EMPID_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, CHECK1_I, CHECK2_I, IDATE_I, COMMENTSTR10_I, DEX_ROW_ID FROM .AHR2BE31 WHERE EMPID_I = @EMPID_I ORDER BY EMPID_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2BE31SS_1] TO [DYNGRP]
GO
