SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00661SS_2] (@USERID char(15), @SOPTYPE smallint, @SOPNUMBE char(21)) AS  set nocount on SELECT TOP 1  SOPTYPE, SOPNUMBE, CONSTS, CONTNBR, USERID, DEX_ROW_ID FROM .SVC00661 WHERE USERID = @USERID AND SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE ORDER BY USERID ASC, SOPTYPE ASC, SOPNUMBE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00661SS_2] TO [DYNGRP]
GO
