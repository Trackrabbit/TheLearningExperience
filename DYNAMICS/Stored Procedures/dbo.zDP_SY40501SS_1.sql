SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40501SS_1] (@TBLPHYSNM char(51), @TABLTECH char(79)) AS  set nocount on SELECT TOP 1  TABLTECH, RULSERIES, TBLPHYSNM, DICTID, DEX_ROW_ID FROM .SY40501 WHERE TBLPHYSNM = @TBLPHYSNM AND TABLTECH = @TABLTECH ORDER BY TBLPHYSNM ASC, TABLTECH ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40501SS_1] TO [DYNGRP]
GO