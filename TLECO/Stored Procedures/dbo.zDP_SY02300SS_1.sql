SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY02300SS_1] (@SERIES smallint, @TRXSOURC char(25)) AS  set nocount on SELECT TOP 1  UPSTDTFR, BCHEXIST, PTGENLED, SERIES, TRXSOURC, PSTOGLHW, ALTRXPST, AUTPSTGL, VERBATOT, VERTRX, REQBAPRV, PASSWORD, INCMCINF, Use_Account_Settings, POSTINDETAIL, DEX_ROW_ID FROM .SY02300 WHERE SERIES = @SERIES AND TRXSOURC = @TRXSOURC ORDER BY SERIES ASC, TRXSOURC ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02300SS_1] TO [DYNGRP]
GO