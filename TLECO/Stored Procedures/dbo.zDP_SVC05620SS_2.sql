SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05620SS_2] (@RTV_Number char(15)) AS  set nocount on SELECT TOP 1  RTV_Number, RTV_Line, LNSEQNBR, SVCFRMSTAT, SVCTOSTAT, DSCRPTION, USERID, CREATDDT, CREATETIME, DEX_ROW_ID FROM .SVC05620 WHERE RTV_Number = @RTV_Number ORDER BY RTV_Number ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05620SS_2] TO [DYNGRP]
GO