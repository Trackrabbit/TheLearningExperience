SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO07260SS_1] (@USERID char(15), @DICTID smallint, @RESID smallint, @SEQNUMBR int) AS  set nocount on SELECT TOP 1  USERID, DICTID, RESID, SEQNUMBR, URL, SRS_Report_Name, DEX_ROW_ID FROM .CO07260 WHERE USERID = @USERID AND DICTID = @DICTID AND RESID = @RESID AND SEQNUMBR = @SEQNUMBR ORDER BY USERID ASC, DICTID ASC, RESID ASC, SEQNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO07260SS_1] TO [DYNGRP]
GO