SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05002SS_1] (@RTV_Return_Status char(3)) AS  set nocount on SELECT TOP 1  RTV_Return_Status, STSDESCR, DEX_ROW_ID FROM .SVC05002 WHERE RTV_Return_Status = @RTV_Return_Status ORDER BY RTV_Return_Status ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05002SS_1] TO [DYNGRP]
GO
