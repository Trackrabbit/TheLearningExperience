SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRPBEN12SS_1] (@EMPID_I char(15), @BENEFIT char(7), @COPAYCODE_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, BENEFIT, COPAYCODE_I, COPAYAMOUNT_I, DEX_ROW_ID FROM .HRPBEN12 WHERE EMPID_I = @EMPID_I AND BENEFIT = @BENEFIT AND COPAYCODE_I = @COPAYCODE_I ORDER BY EMPID_I ASC, BENEFIT ASC, COPAYCODE_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRPBEN12SS_1] TO [DYNGRP]
GO
