SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00952SI] (@ITEMNMBR char(31), @LOCNCODE char(11), @Good_Stock tinyint, @TRNSFLOC char(11), @ITLOCN char(11), @ETADAYS smallint, @SHIPMTHD char(15), @Used_Options smallint, @SVC_ItemSiteDelta tinyint, @SVC_Create_Non_Serial_Eq tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00952 (ITEMNMBR, LOCNCODE, Good_Stock, TRNSFLOC, ITLOCN, ETADAYS, SHIPMTHD, Used_Options, SVC_ItemSiteDelta, SVC_Create_Non_Serial_Eq) VALUES ( @ITEMNMBR, @LOCNCODE, @Good_Stock, @TRNSFLOC, @ITLOCN, @ETADAYS, @SHIPMTHD, @Used_Options, @SVC_ItemSiteDelta, @SVC_Create_Non_Serial_Eq) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00952SI] TO [DYNGRP]
GO
