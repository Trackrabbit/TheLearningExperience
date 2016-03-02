SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR41105SS_2] (@CCodeDesc char(31), @CCode char(7)) AS  set nocount on SELECT TOP 1  CCode, CCodeDesc, DEX_ROW_ID FROM .UPR41105 WHERE CCodeDesc = @CCodeDesc AND CCode = @CCode ORDER BY CCodeDesc ASC, CCode ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41105SS_2] TO [DYNGRP]
GO
