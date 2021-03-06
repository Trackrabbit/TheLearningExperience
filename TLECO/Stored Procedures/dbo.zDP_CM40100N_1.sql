SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM40100N_1] (@BS int, @CMRECNUM numeric(19,5), @CMRECNUM_RS numeric(19,5), @CMRECNUM_RE numeric(19,5)) AS  set nocount on IF @CMRECNUM_RS IS NULL BEGIN SELECT TOP 25  CMRECNUM, NXTNUM, CMHISTORY, USRDFPR1, USRDRPR2, CHEKBKID, DEX_ROW_ID FROM .CM40100 WHERE ( CMRECNUM > @CMRECNUM ) ORDER BY CMRECNUM ASC END ELSE IF @CMRECNUM_RS = @CMRECNUM_RE BEGIN SELECT TOP 25  CMRECNUM, NXTNUM, CMHISTORY, USRDFPR1, USRDRPR2, CHEKBKID, DEX_ROW_ID FROM .CM40100 WHERE CMRECNUM = @CMRECNUM_RS AND ( CMRECNUM > @CMRECNUM ) ORDER BY CMRECNUM ASC END ELSE BEGIN SELECT TOP 25  CMRECNUM, NXTNUM, CMHISTORY, USRDFPR1, USRDRPR2, CHEKBKID, DEX_ROW_ID FROM .CM40100 WHERE CMRECNUM BETWEEN @CMRECNUM_RS AND @CMRECNUM_RE AND ( CMRECNUM > @CMRECNUM ) ORDER BY CMRECNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM40100N_1] TO [DYNGRP]
GO
