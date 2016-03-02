SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM20102N_1] (@BS int, @USERID char(15), @RMDTYPAL smallint, @DOCNUMBR char(21), @APTODCTY smallint, @APTODCNM char(21), @USERID_RS char(15), @RMDTYPAL_RS smallint, @DOCNUMBR_RS char(21), @APTODCTY_RS smallint, @APTODCNM_RS char(21), @USERID_RE char(15), @RMDTYPAL_RE smallint, @DOCNUMBR_RE char(21), @APTODCTY_RE smallint, @APTODCNM_RE char(21)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, DOCNUMBR, BACHNUMB, RMDTYPAL, DISTKNAM, WROFAMNT, USERID, BCHSOURC, APTODCNM, APTODCTY, DISAVTKN, ORDISTKN, ORDATKN, ORWROFAM, RLGANLOS, FuncRndAmt, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .RM20102 WHERE ( USERID = @USERID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND APTODCTY = @APTODCTY AND APTODCNM > @APTODCNM OR USERID = @USERID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND APTODCTY > @APTODCTY OR USERID = @USERID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR USERID = @USERID AND RMDTYPAL > @RMDTYPAL OR USERID > @USERID ) ORDER BY USERID ASC, RMDTYPAL ASC, DOCNUMBR ASC, APTODCTY ASC, APTODCNM ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  CUSTNMBR, DOCNUMBR, BACHNUMB, RMDTYPAL, DISTKNAM, WROFAMNT, USERID, BCHSOURC, APTODCNM, APTODCTY, DISAVTKN, ORDISTKN, ORDATKN, ORWROFAM, RLGANLOS, FuncRndAmt, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .RM20102 WHERE USERID = @USERID_RS AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND APTODCNM BETWEEN @APTODCNM_RS AND @APTODCNM_RE AND ( USERID = @USERID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND APTODCTY = @APTODCTY AND APTODCNM > @APTODCNM OR USERID = @USERID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND APTODCTY > @APTODCTY OR USERID = @USERID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR USERID = @USERID AND RMDTYPAL > @RMDTYPAL OR USERID > @USERID ) ORDER BY USERID ASC, RMDTYPAL ASC, DOCNUMBR ASC, APTODCTY ASC, APTODCNM ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, DOCNUMBR, BACHNUMB, RMDTYPAL, DISTKNAM, WROFAMNT, USERID, BCHSOURC, APTODCNM, APTODCTY, DISAVTKN, ORDISTKN, ORDATKN, ORWROFAM, RLGANLOS, FuncRndAmt, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .RM20102 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND RMDTYPAL BETWEEN @RMDTYPAL_RS AND @RMDTYPAL_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND APTODCTY BETWEEN @APTODCTY_RS AND @APTODCTY_RE AND APTODCNM BETWEEN @APTODCNM_RS AND @APTODCNM_RE AND ( USERID = @USERID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND APTODCTY = @APTODCTY AND APTODCNM > @APTODCNM OR USERID = @USERID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND APTODCTY > @APTODCTY OR USERID = @USERID AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR > @DOCNUMBR OR USERID = @USERID AND RMDTYPAL > @RMDTYPAL OR USERID > @USERID ) ORDER BY USERID ASC, RMDTYPAL ASC, DOCNUMBR ASC, APTODCTY ASC, APTODCNM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM20102N_1] TO [DYNGRP]
GO
