SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00946SI] (@SVC_Tech_Inventory_ID char(11), @DSCRIPTN char(31), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00946 (SVC_Tech_Inventory_ID, DSCRIPTN, NOTEINDX) VALUES ( @SVC_Tech_Inventory_ID, @DSCRIPTN, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00946SI] TO [DYNGRP]
GO