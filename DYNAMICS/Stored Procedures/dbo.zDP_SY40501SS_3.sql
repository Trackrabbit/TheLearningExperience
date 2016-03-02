SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY40501SS_3] (@DICTID smallint, @RULSERIES char(15), @TABLTECH char(79)) AS  set nocount on SELECT TOP 1  TABLTECH, RULSERIES, TBLPHYSNM, DICTID, DEX_ROW_ID FROM .SY40501 WHERE DICTID = @DICTID AND RULSERIES = @RULSERIES AND TABLTECH = @TABLTECH ORDER BY DICTID ASC, RULSERIES ASC, TABLTECH ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40501SS_3] TO [DYNGRP]
GO
