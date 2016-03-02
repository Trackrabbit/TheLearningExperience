SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD20101SI] (@EMPLOYID char(15), @INDXLONG int, @INACTIVE tinyint, @DEDNMTHD smallint, @DEDUCTON char(7), @DDPRE tinyint, @DDPRECNT smallint, @DDPCT smallint, @DDAMTDLR numeric(19,5), @DDACTNUM char(17), @DDTRANUM char(9), @DDTRANS char(3), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .DD20101 (EMPLOYID, INDXLONG, INACTIVE, DEDNMTHD, DEDUCTON, DDPRE, DDPRECNT, DDPCT, DDAMTDLR, DDACTNUM, DDTRANUM, DDTRANS) VALUES ( @EMPLOYID, @INDXLONG, @INACTIVE, @DEDNMTHD, @DEDUCTON, @DDPRE, @DDPRECNT, @DDPCT, @DDAMTDLR, @DDACTNUM, @DDTRANUM, @DDTRANS) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD20101SI] TO [DYNGRP]
GO
