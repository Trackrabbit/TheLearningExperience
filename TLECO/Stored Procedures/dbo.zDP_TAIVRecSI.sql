SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_TAIVRecSI] (@ITEMNMBR char(31), @LOCNCODE char(11), @TAIVRecReason char(111), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .TAIVRec (ITEMNMBR, LOCNCODE, TAIVRecReason) VALUES ( @ITEMNMBR, @LOCNCODE, @TAIVRecReason) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_TAIVRecSI] TO [DYNGRP]
GO
