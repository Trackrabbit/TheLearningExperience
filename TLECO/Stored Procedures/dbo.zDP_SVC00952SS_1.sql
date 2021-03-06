SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00952SS_1] (@ITEMNMBR char(31), @LOCNCODE char(11)) AS  set nocount on SELECT TOP 1  ITEMNMBR, LOCNCODE, Good_Stock, TRNSFLOC, ITLOCN, ETADAYS, SHIPMTHD, Used_Options, SVC_ItemSiteDelta, SVC_Create_Non_Serial_Eq, DEX_ROW_ID FROM .SVC00952 WHERE ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE ORDER BY ITEMNMBR ASC, LOCNCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00952SS_1] TO [DYNGRP]
GO
