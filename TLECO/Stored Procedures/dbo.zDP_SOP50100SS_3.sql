SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50100SS_3] (@PROCORIG smallint, @USERID char(15), @DOCDATE datetime) AS  set nocount on SELECT TOP 1  PROCORIG, USERID, MKTOPROC, SOPNUMBE, SOPTYPE, DOCDATE, CUSTNMBR, CUSTNAME, CSTPONBR, BACHNUMB, DOCID, ERROR, DEX_ROW_ID FROM .SOP50100 WHERE PROCORIG = @PROCORIG AND USERID = @USERID AND DOCDATE = @DOCDATE ORDER BY PROCORIG ASC, USERID ASC, DOCDATE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50100SS_3] TO [DYNGRP]
GO