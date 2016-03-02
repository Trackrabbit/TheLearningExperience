SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699714N_1] (@BS int, @BSSI_PortfolioID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @LNSEQNBR numeric(19,5), @BSSI_LineSeqNumber numeric(19,5), @BSSI_PortfolioID_RS char(25), @BSSI_Charge_ID_RS char(25), @YEAR1_RS smallint, @LNSEQNBR_RS numeric(19,5), @BSSI_LineSeqNumber_RS numeric(19,5), @BSSI_PortfolioID_RE char(25), @BSSI_Charge_ID_RE char(25), @YEAR1_RE smallint, @LNSEQNBR_RE numeric(19,5), @BSSI_LineSeqNumber_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_PortfolioID_RS IS NULL BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, LNSEQNBR, BSSI_LineSeqNumber, BSSI_NonPtcbCtrbAmtExt, BSSI_Sales_Amount, DATE1, BSSI_Description, USERID, DEX_ROW_ID FROM .B4699714 WHERE ( BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND LNSEQNBR = @LNSEQNBR AND BSSI_LineSeqNumber > @BSSI_LineSeqNumber OR BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND LNSEQNBR > @LNSEQNBR OR BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 > @YEAR1 OR BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID > @BSSI_Charge_ID OR BSSI_PortfolioID > @BSSI_PortfolioID ) ORDER BY BSSI_PortfolioID ASC, BSSI_Charge_ID ASC, YEAR1 ASC, LNSEQNBR ASC, BSSI_LineSeqNumber ASC END ELSE IF @BSSI_PortfolioID_RS = @BSSI_PortfolioID_RE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, LNSEQNBR, BSSI_LineSeqNumber, BSSI_NonPtcbCtrbAmtExt, BSSI_Sales_Amount, DATE1, BSSI_Description, USERID, DEX_ROW_ID FROM .B4699714 WHERE BSSI_PortfolioID = @BSSI_PortfolioID_RS AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND BSSI_LineSeqNumber BETWEEN @BSSI_LineSeqNumber_RS AND @BSSI_LineSeqNumber_RE AND ( BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND LNSEQNBR = @LNSEQNBR AND BSSI_LineSeqNumber > @BSSI_LineSeqNumber OR BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND LNSEQNBR > @LNSEQNBR OR BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 > @YEAR1 OR BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID > @BSSI_Charge_ID OR BSSI_PortfolioID > @BSSI_PortfolioID ) ORDER BY BSSI_PortfolioID ASC, BSSI_Charge_ID ASC, YEAR1 ASC, LNSEQNBR ASC, BSSI_LineSeqNumber ASC END ELSE BEGIN SELECT TOP 25  BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, LNSEQNBR, BSSI_LineSeqNumber, BSSI_NonPtcbCtrbAmtExt, BSSI_Sales_Amount, DATE1, BSSI_Description, USERID, DEX_ROW_ID FROM .B4699714 WHERE BSSI_PortfolioID BETWEEN @BSSI_PortfolioID_RS AND @BSSI_PortfolioID_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND BSSI_LineSeqNumber BETWEEN @BSSI_LineSeqNumber_RS AND @BSSI_LineSeqNumber_RE AND ( BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND LNSEQNBR = @LNSEQNBR AND BSSI_LineSeqNumber > @BSSI_LineSeqNumber OR BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND LNSEQNBR > @LNSEQNBR OR BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 > @YEAR1 OR BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID > @BSSI_Charge_ID OR BSSI_PortfolioID > @BSSI_PortfolioID ) ORDER BY BSSI_PortfolioID ASC, BSSI_Charge_ID ASC, YEAR1 ASC, LNSEQNBR ASC, BSSI_LineSeqNumber ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699714N_1] TO [DYNGRP]
GO
