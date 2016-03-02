SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240472N_1] (@BS int, @BACHNUMB char(15), @BCHSOURC char(15), @VENDORID char(15), @PMNTNMBR char(21), @BACHNUMB_RS char(15), @BCHSOURC_RS char(15), @VENDORID_RS char(15), @PMNTNMBR_RS char(21), @BACHNUMB_RE char(15), @BCHSOURC_RE char(15), @VENDORID_RE char(15), @PMNTNMBR_RE char(21)) AS /* 14.00.0084.000 */ set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, MEORIGBACHNUMB, VENDORID, VENDNAME, PMNTNMBR, NUMOFTRX, TotAmtPaid, REJECTIONREASON, DEX_ROW_ID FROM .ME240472 WHERE ( BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND VENDORID = @VENDORID AND PMNTNMBR > @PMNTNMBR OR BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND VENDORID > @VENDORID OR BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC, VENDORID ASC, PMNTNMBR ASC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, MEORIGBACHNUMB, VENDORID, VENDNAME, PMNTNMBR, NUMOFTRX, TotAmtPaid, REJECTIONREASON, DEX_ROW_ID FROM .ME240472 WHERE BACHNUMB = @BACHNUMB_RS AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND ( BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND VENDORID = @VENDORID AND PMNTNMBR > @PMNTNMBR OR BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND VENDORID > @VENDORID OR BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC, VENDORID ASC, PMNTNMBR ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, MEORIGBACHNUMB, VENDORID, VENDNAME, PMNTNMBR, NUMOFTRX, TotAmtPaid, REJECTIONREASON, DEX_ROW_ID FROM .ME240472 WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND BCHSOURC BETWEEN @BCHSOURC_RS AND @BCHSOURC_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND PMNTNMBR BETWEEN @PMNTNMBR_RS AND @PMNTNMBR_RE AND ( BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND VENDORID = @VENDORID AND PMNTNMBR > @PMNTNMBR OR BACHNUMB = @BACHNUMB AND BCHSOURC = @BCHSOURC AND VENDORID > @VENDORID OR BACHNUMB = @BACHNUMB AND BCHSOURC > @BCHSOURC OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, BCHSOURC ASC, VENDORID ASC, PMNTNMBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240472N_1] TO [DYNGRP]
GO