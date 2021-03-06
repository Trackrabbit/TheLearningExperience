SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00325SS_5] (@USERID char(15), @MKDTOPST tinyint, @ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  USERID, EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, CUSTNMBR, ADRSCODE, TECHID, OFFID, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, CONSTS, CONTNBR, RANGESET, Status_Bar_String, DEX_ROW_ID FROM .SVC00325 WHERE USERID = @USERID AND MKDTOPST = @MKDTOPST AND ITEMNMBR = @ITEMNMBR ORDER BY USERID ASC, MKDTOPST ASC, ITEMNMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00325SS_5] TO [DYNGRP]
GO
