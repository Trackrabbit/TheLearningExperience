SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA42100SS_2] (@CALNDRID char(15), @FISCALYEAR smallint, @PERIODID smallint) AS  set nocount on SELECT TOP 1  PERIODSTARTDATE, PERIODENDDATE, PERIODID, FISCALYEAR, CALNDRID, DEX_ROW_ID FROM .FA42100 WHERE CALNDRID = @CALNDRID AND FISCALYEAR = @FISCALYEAR AND PERIODID = @PERIODID ORDER BY CALNDRID ASC, FISCALYEAR ASC, PERIODID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA42100SS_2] TO [DYNGRP]
GO