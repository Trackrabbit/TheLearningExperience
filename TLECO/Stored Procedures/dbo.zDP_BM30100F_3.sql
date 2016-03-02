SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM30100F_3] (@PSTGDATE_RS datetime, @TRXSORCE_RS char(13), @PSTGDATE_RE datetime, @TRXSORCE_RE char(13)) AS  set nocount on IF @PSTGDATE_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, BACHNUMB, BCHSOURC, BCHCOMNT, BACHFREQ, PSTGDATE, NUMOFTRX, BCHTOTAL, NOTEINDX, ORIGIN, APPROVL, APRVLUSERID, APPRVLDT, CNTRLTRX, CNTRLTOT, DEX_ROW_ID FROM .BM30100 ORDER BY PSTGDATE ASC, TRXSORCE ASC END ELSE IF @PSTGDATE_RS = @PSTGDATE_RE BEGIN SELECT TOP 25  TRXSORCE, BACHNUMB, BCHSOURC, BCHCOMNT, BACHFREQ, PSTGDATE, NUMOFTRX, BCHTOTAL, NOTEINDX, ORIGIN, APPROVL, APRVLUSERID, APPRVLDT, CNTRLTRX, CNTRLTOT, DEX_ROW_ID FROM .BM30100 WHERE PSTGDATE = @PSTGDATE_RS AND TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE ORDER BY PSTGDATE ASC, TRXSORCE ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, BACHNUMB, BCHSOURC, BCHCOMNT, BACHFREQ, PSTGDATE, NUMOFTRX, BCHTOTAL, NOTEINDX, ORIGIN, APPROVL, APRVLUSERID, APPRVLDT, CNTRLTRX, CNTRLTOT, DEX_ROW_ID FROM .BM30100 WHERE PSTGDATE BETWEEN @PSTGDATE_RS AND @PSTGDATE_RE AND TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE ORDER BY PSTGDATE ASC, TRXSORCE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM30100F_3] TO [DYNGRP]
GO