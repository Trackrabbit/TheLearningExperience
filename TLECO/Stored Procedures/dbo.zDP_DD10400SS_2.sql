SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD10400SS_2] (@USERID char(15), @INDXLONG int) AS  set nocount on SELECT TOP 1  INDXLONG, DDAUTOST, INCLPYMT, PRINTED, BLDCHDID, BLDCHKDT, BLDCHTIM, AUCTRLCD, USERID, PAYDATE, Effective_Date, CHEKBKID, DEX_ROW_ID FROM .DD10400 WHERE USERID = @USERID AND INDXLONG = @INDXLONG ORDER BY USERID ASC, INDXLONG ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD10400SS_2] TO [DYNGRP]
GO
