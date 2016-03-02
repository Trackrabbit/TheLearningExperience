SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM30100F_1] (@TRXSORCE_RS char(13), @TRXSORCE_RE char(13)) AS  set nocount on IF @TRXSORCE_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, BACHNUMB, BCHSOURC, BCHCOMNT, BACHFREQ, PSTGDATE, NUMOFTRX, BCHTOTAL, NOTEINDX, ORIGIN, APPROVL, APRVLUSERID, APPRVLDT, CNTRLTRX, CNTRLTOT, DEX_ROW_ID FROM .BM30100 ORDER BY TRXSORCE ASC END ELSE IF @TRXSORCE_RS = @TRXSORCE_RE BEGIN SELECT TOP 25  TRXSORCE, BACHNUMB, BCHSOURC, BCHCOMNT, BACHFREQ, PSTGDATE, NUMOFTRX, BCHTOTAL, NOTEINDX, ORIGIN, APPROVL, APRVLUSERID, APPRVLDT, CNTRLTRX, CNTRLTOT, DEX_ROW_ID FROM .BM30100 WHERE TRXSORCE = @TRXSORCE_RS ORDER BY TRXSORCE ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, BACHNUMB, BCHSOURC, BCHCOMNT, BACHFREQ, PSTGDATE, NUMOFTRX, BCHTOTAL, NOTEINDX, ORIGIN, APPROVL, APRVLUSERID, APPRVLDT, CNTRLTRX, CNTRLTOT, DEX_ROW_ID FROM .BM30100 WHERE TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE ORDER BY TRXSORCE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM30100F_1] TO [DYNGRP]
GO
