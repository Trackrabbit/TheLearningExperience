SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_OSHABPSS_1] (@INJURYBODYPART_I char(31)) AS  set nocount on SELECT TOP 1  INJURYBODYPART_I, DEX_ROW_ID FROM .OSHABP WHERE INJURYBODYPART_I = @INJURYBODYPART_I ORDER BY INJURYBODYPART_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_OSHABPSS_1] TO [DYNGRP]
GO
