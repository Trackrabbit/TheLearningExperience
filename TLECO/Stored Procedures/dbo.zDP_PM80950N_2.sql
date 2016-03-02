SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80950N_2] (@BS int, @USERID char(15), @SEQNUMBR int, @BCHSOURC char(15), @PMNTNMBR char(21), @Email_Type smallint, @USERID_RS char(15), @SEQNUMBR_RS int, @BCHSOURC_RS char(15), @PMNTNMBR_RS char(21), @Email_Type_RS smallint, @USERID_RE char(15), @SEQNUMBR_RE int, @BCHSOURC_RE char(15), @PMNTNMBR_RE char(21), @Email_Type_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, SEQNUMBR, DOCDATE, DOCNUMBR, VENDORID, VENDNAME, VNDCHKNM, CURNCYID, VOIDED, DOCTYPE, CHKCOMNT, USERID, SEPRMTNC, ERROR, Email_Type, DOCAMNT, PYMTTYPE, Electronic, DEX_ROW_ID FROM .PM80950 WHERE ( USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND BCHSOURC = @BCHSOURC AND PMNTNMBR = @PMNTNMBR AND Email_Type > @Email_Type OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND BCHSOURC = @BCHSOURC AND PMNTNMBR > @PMNTNMBR OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND BCHSOURC > @BCHSOURC OR USERID = @USERID AND SEQNUMBR > @SEQNUMBR OR USERID > @USERID ) ORDER BY USERID ASC, SEQNUMBR ASC, BCHSOURC ASC, PMNTNMBR ASC, Email_Type ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, SEQNUMBR, DOCDATE, DOCNUMBR, VENDORID, VENDNAME, VNDCHKNM, CURNCYID, VOIDED, DOCTYPE, CHKCOMNT, USERID, SEPRMTNC, ERROR, Email_Type, DOCAMNT, PYMTTYPE, Electronic, DEX_ROW_ID FROM .PM80950 WHERE USERID = @USERID_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND Email_Type BETWEEN @Email_Type_RS AND @Email_Type_RE AND ( USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND BCHSOURC = @BCHSOURC AND PMNTNMBR = @PMNTNMBR AND Email_Type > @Email_Type OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND BCHSOURC = @BCHSOURC AND PMNTNMBR > @PMNTNMBR OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND BCHSOURC > @BCHSOURC OR USERID = @USERID AND SEQNUMBR > @SEQNUMBR OR USERID > @USERID ) ORDER BY USERID ASC, SEQNUMBR ASC, BCHSOURC ASC, PMNTNMBR ASC, Email_Type ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, PMNTNMBR, SEQNUMBR, DOCDATE, DOCNUMBR, VENDORID, VENDNAME, VNDCHKNM, CURNCYID, VOIDED, DOCTYPE, CHKCOMNT, USERID, SEPRMTNC, ERROR, Email_Type, DOCAMNT, PYMTTYPE, Electronic, DEX_ROW_ID FROM .PM80950 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND Email_Type BETWEEN @Email_Type_RS AND @Email_Type_RE AND ( USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND BCHSOURC = @BCHSOURC AND PMNTNMBR = @PMNTNMBR AND Email_Type > @Email_Type OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND BCHSOURC = @BCHSOURC AND PMNTNMBR > @PMNTNMBR OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND BCHSOURC > @BCHSOURC OR USERID = @USERID AND SEQNUMBR > @SEQNUMBR OR USERID > @USERID ) ORDER BY USERID ASC, SEQNUMBR ASC, BCHSOURC ASC, PMNTNMBR ASC, Email_Type ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80950N_2] TO [DYNGRP]
GO