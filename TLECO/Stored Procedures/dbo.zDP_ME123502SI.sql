SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123502SI] (@PP_Number char(21), @CHEKBKID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ME123502 (PP_Number, CHEKBKID) VALUES ( @PP_Number, @CHEKBKID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123502SI] TO [DYNGRP]
GO
