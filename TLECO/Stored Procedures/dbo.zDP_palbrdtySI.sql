SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbrdtySI] (@IntegerValue smallint, @DSCRIPTN char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .palbrdty (IntegerValue, DSCRIPTN) VALUES ( @IntegerValue, @DSCRIPTN) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off  
GO
GRANT EXECUTE ON  [dbo].[zDP_palbrdtySI] TO [DYNGRP]
GO
