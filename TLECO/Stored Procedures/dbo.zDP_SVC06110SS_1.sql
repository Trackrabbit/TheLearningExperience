SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06110SS_1] (@WORECTYPE smallint, @WORKORDNUM char(11), @LNITMSEQ int) AS  set nocount on SELECT TOP 1  WORECTYPE, WORKORDNUM, LNITMSEQ, FRMWOSTAT, TOWOSTAT, STATIONID, TECHID, SVC_Audit_Description, USERID, CREATDDT, CREATETIME, DEX_ROW_ID FROM .SVC06110 WHERE WORECTYPE = @WORECTYPE AND WORKORDNUM = @WORKORDNUM AND LNITMSEQ = @LNITMSEQ ORDER BY WORECTYPE ASC, WORKORDNUM ASC, LNITMSEQ ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06110SS_1] TO [DYNGRP]
GO
