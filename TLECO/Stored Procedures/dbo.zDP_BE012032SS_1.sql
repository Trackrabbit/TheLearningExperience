SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BE012032SS_1] (@COPAYCODE_I char(15)) AS  set nocount on SELECT TOP 1  COPAYCODE_I, COPAYDESCRIPTION_I, COPAYAMOUNT_I, CHANGEBY_I, CHANGEDATE_I, DEX_ROW_ID FROM .BE012032 WHERE COPAYCODE_I = @COPAYCODE_I ORDER BY COPAYCODE_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BE012032SS_1] TO [DYNGRP]
GO
