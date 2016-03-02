SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40502SS_1] (@BARULEID int, @TBLPHYSNM char(51), @ALIASNAME char(15)) AS  set nocount on SELECT TOP 1  BARULEID, TBLPHYSNM, ALIASNAME, DEX_ROW_ID FROM .SY40502 WHERE BARULEID = @BARULEID AND TBLPHYSNM = @TBLPHYSNM AND ALIASNAME = @ALIASNAME ORDER BY BARULEID ASC, TBLPHYSNM ASC, ALIASNAME ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40502SS_1] TO [DYNGRP]
GO
