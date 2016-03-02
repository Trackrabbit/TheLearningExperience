SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2DIS05SS_1] (@EMPID_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, DATEFILED_I, DSCRIPTN, POINTS_I, CHANGES_I, DEX_ROW_ID FROM .HR2DIS05 WHERE EMPID_I = @EMPID_I ORDER BY EMPID_I ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2DIS05SS_1] TO [DYNGRP]
GO