SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC01000SS_1] (@ITEMNMBR char(31), @SCHEDID char(9)) AS  set nocount on SELECT TOP 1  ITEMNMBR, ACTIVE, SCHEDID, DEX_ROW_ID FROM .SVC01000 WHERE ITEMNMBR = @ITEMNMBR AND SCHEDID = @SCHEDID ORDER BY ITEMNMBR ASC, SCHEDID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC01000SS_1] TO [DYNGRP]
GO