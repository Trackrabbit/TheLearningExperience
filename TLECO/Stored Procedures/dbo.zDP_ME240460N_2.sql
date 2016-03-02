SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240460N_2] (@BS int, @CHEKBKID char(15), @PMNTNMBR char(21), @DOCNUMBR char(21), @CHEKBKID_RS char(15), @PMNTNMBR_RS char(21), @DOCNUMBR_RS char(21), @CHEKBKID_RE char(15), @PMNTNMBR_RE char(21), @DOCNUMBR_RE char(21)) AS /* 14.00.0084.000 */ set nocount on IF @CHEKBKID_RS IS NULL BEGIN SELECT TOP 25  Queue_ID, CHEKBKID, BACHNUMB, USERID, MECHKID, PMNTNMBR, DOCNUMBR, DOCDATE, ME_Refund_Check, CHEKNMBR, CHEKAMNT, VENDORID, ME_Voided, MESEQNUMBR, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .ME240460 WHERE ( CHEKBKID = @CHEKBKID AND PMNTNMBR = @PMNTNMBR AND DOCNUMBR > @DOCNUMBR OR CHEKBKID = @CHEKBKID AND PMNTNMBR > @PMNTNMBR OR CHEKBKID > @CHEKBKID ) ORDER BY CHEKBKID ASC, PMNTNMBR ASC, DOCNUMBR ASC END ELSE IF @CHEKBKID_RS = @CHEKBKID_RE BEGIN SELECT TOP 25  Queue_ID, CHEKBKID, BACHNUMB, USERID, MECHKID, PMNTNMBR, DOCNUMBR, DOCDATE, ME_Refund_Check, CHEKNMBR, CHEKAMNT, VENDORID, ME_Voided, MESEQNUMBR, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .ME240460 WHERE CHEKBKID = @CHEKBKID_RS AND PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( CHEKBKID = @CHEKBKID AND PMNTNMBR = @PMNTNMBR AND DOCNUMBR > @DOCNUMBR OR CHEKBKID = @CHEKBKID AND PMNTNMBR > @PMNTNMBR OR CHEKBKID > @CHEKBKID ) ORDER BY CHEKBKID ASC, PMNTNMBR ASC, DOCNUMBR ASC END ELSE BEGIN SELECT TOP 25  Queue_ID, CHEKBKID, BACHNUMB, USERID, MECHKID, PMNTNMBR, DOCNUMBR, DOCDATE, ME_Refund_Check, CHEKNMBR, CHEKAMNT, VENDORID, ME_Voided, MESEQNUMBR, CURNCYID, CURRNIDX, DEX_ROW_ID FROM .ME240460 WHERE CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND ( CHEKBKID = @CHEKBKID AND PMNTNMBR = @PMNTNMBR AND DOCNUMBR > @DOCNUMBR OR CHEKBKID = @CHEKBKID AND PMNTNMBR > @PMNTNMBR OR CHEKBKID > @CHEKBKID ) ORDER BY CHEKBKID ASC, PMNTNMBR ASC, DOCNUMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240460N_2] TO [DYNGRP]
GO