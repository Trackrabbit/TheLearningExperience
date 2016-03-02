SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10800N_4] (@BS int, @BCHSOURC char(15), @BACHNUMB char(15), @POPRCTNM char(17), @PONUMBER char(17), @BCHSOURC_RS char(15), @BACHNUMB_RS char(15), @POPRCTNM_RS char(17), @PONUMBER_RS char(17), @BCHSOURC_RE char(15), @BACHNUMB_RE char(15), @POPRCTNM_RE char(17), @PONUMBER_RE char(17)) AS  set nocount on IF @BCHSOURC_RS IS NULL BEGIN SELECT TOP 25  POPRCTNM, PONUMBER, PMNTNMBR, APPLDAMT, ORAPPAMT, DISTKNAM, ORDISTKN, PrepaymentAccountIndex, PrepaymentAmount, OriginatingPrepaymentAmt, PSTGSTUS, BACHNUMB, BCHSOURC, TRXSORCE, GLPOSTDT, VOIDED, DEX_ROW_ID FROM .POP10800 WHERE ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND POPRCTNM = @POPRCTNM AND PONUMBER > @PONUMBER OR BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND POPRCTNM > @POPRCTNM OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, POPRCTNM ASC, PONUMBER ASC END ELSE IF @BCHSOURC_RS = @BCHSOURC_RE BEGIN SELECT TOP 25  POPRCTNM, PONUMBER, PMNTNMBR, APPLDAMT, ORAPPAMT, DISTKNAM, ORDISTKN, PrepaymentAccountIndex, PrepaymentAmount, OriginatingPrepaymentAmt, PSTGSTUS, BACHNUMB, BCHSOURC, TRXSORCE, GLPOSTDT, VOIDED, DEX_ROW_ID FROM .POP10800 WHERE BCHSOURC = @BCHSOURC_RS AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND POPRCTNM = @POPRCTNM AND PONUMBER > @PONUMBER OR BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND POPRCTNM > @POPRCTNM OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, POPRCTNM ASC, PONUMBER ASC END ELSE BEGIN SELECT TOP 25  POPRCTNM, PONUMBER, PMNTNMBR, APPLDAMT, ORAPPAMT, DISTKNAM, ORDISTKN, PrepaymentAccountIndex, PrepaymentAmount, OriginatingPrepaymentAmt, PSTGSTUS, BACHNUMB, BCHSOURC, TRXSORCE, GLPOSTDT, VOIDED, DEX_ROW_ID FROM .POP10800 WHERE BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE AND PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ( BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND POPRCTNM = @POPRCTNM AND PONUMBER > @PONUMBER OR BCHSOURC = @BCHSOURC AND BACHNUMB = @BACHNUMB AND POPRCTNM > @POPRCTNM OR BCHSOURC = @BCHSOURC AND BACHNUMB > @BACHNUMB OR BCHSOURC > @BCHSOURC ) ORDER BY BCHSOURC ASC, BACHNUMB ASC, POPRCTNM ASC, PONUMBER ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10800N_4] TO [DYNGRP]
GO