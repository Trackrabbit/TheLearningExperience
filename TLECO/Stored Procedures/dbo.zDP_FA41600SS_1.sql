SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA41600SS_1] (@LEASECOMPINDX int) AS  set nocount on SELECT TOP 1  LEASECOMPINDX, LEASECOMPID, VENDORID, NOTEINDX, LASTMNTDDATE, LASTMNTDTIME, LASTMNTDUSERID, DEX_ROW_ID FROM .FA41600 WHERE LEASECOMPINDX = @LEASECOMPINDX ORDER BY LEASECOMPINDX ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA41600SS_1] TO [DYNGRP]
GO
