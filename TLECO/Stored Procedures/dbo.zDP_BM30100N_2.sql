SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM30100N_2] (@BS int, @BCHSOURC char(15), @BACHNUMB char(15), @TRXSORCE char(13), @BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @TRXSORCE_RS char(13), @BCHSOURC_RE char(15), @BACHNUMB_RE char(15), @TRXSORCE_RE char(13)) AS  set nocount on IF @BCHSOURC_RS IS NULL BEGIN SELECT TOP 25  TRXSORCE, BACHNUMB, BCHSOURC, BCHCOMNT, BACHFREQ, PSTGDATE, NUMOFTRX, BCHTOTAL, NOTEINDX, ORIGIN, APPROVL, APRVLUSERID, APPRVLDT, CNTRLTRX, CNTRLTOT, DEX_ROW_ID FROM .BM30100 WHERE ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND TRXSORCE > @TRXSORCE OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, TRXSORCE ASC END ELSE IF @BCHSOURC_RS = @BCHSOURC_RE BEGIN SELECT TOP 25  TRXSORCE, BACHNUMB, BCHSOURC, BCHCOMNT, BACHFREQ, PSTGDATE, NUMOFTRX, BCHTOTAL, NOTEINDX, ORIGIN, APPROVL, APRVLUSERID, APPRVLDT, CNTRLTRX, CNTRLTOT, DEX_ROW_ID FROM .BM30100 WHERE BCHSOURC = @BCHSOURC_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND TRXSORCE > @TRXSORCE OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, TRXSORCE ASC END ELSE BEGIN SELECT TOP 25  TRXSORCE, BACHNUMB, BCHSOURC, BCHCOMNT, BACHFREQ, PSTGDATE, NUMOFTRX, BCHTOTAL, NOTEINDX, ORIGIN, APPROVL, APRVLUSERID, APPRVLDT, CNTRLTRX, CNTRLTOT, DEX_ROW_ID FROM .BM30100 WHERE BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND TRXSORCE BETWEEN @TRXSORCE_RS AND @TRXSORCE_RE AND ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND TRXSORCE > @TRXSORCE OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, TRXSORCE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM30100N_2] TO [DYNGRP]
GO