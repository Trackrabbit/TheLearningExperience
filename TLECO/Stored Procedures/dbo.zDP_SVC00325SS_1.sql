SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00325SS_1] (@USERID char(15), @EQUIPID int) AS  set nocount on SELECT TOP 1  USERID, EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, CUSTNMBR, ADRSCODE, TECHID, OFFID, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, CONSTS, CONTNBR, RANGESET, Status_Bar_String, DEX_ROW_ID FROM .SVC00325 WHERE USERID = @USERID AND EQUIPID = @EQUIPID ORDER BY USERID ASC, EQUIPID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00325SS_1] TO [DYNGRP]
GO