SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123502SS_2] (@CHEKBKID char(15)) AS  set nocount on SELECT TOP 1  PP_Number, CHEKBKID, DEX_ROW_ID FROM .ME123502 WHERE CHEKBKID = @CHEKBKID ORDER BY CHEKBKID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123502SS_2] TO [DYNGRP]
GO