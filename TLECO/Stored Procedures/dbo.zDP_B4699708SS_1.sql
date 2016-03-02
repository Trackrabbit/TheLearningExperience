SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699708SS_1] (@BSSI_PortfolioID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @LNSEQNBR numeric(19,5), @BSSI_LineSeqNumber numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, LNSEQNBR, BSSI_LineSeqNumber, BSSI_NonPtcbCtrbAmtInt, BSSI_Sales_Amount, DATE1, BSSI_Description, USERID, DEX_ROW_ID FROM .B4699708 WHERE BSSI_PortfolioID = @BSSI_PortfolioID AND BSSI_Charge_ID = @BSSI_Charge_ID AND YEAR1 = @YEAR1 AND LNSEQNBR = @LNSEQNBR AND BSSI_LineSeqNumber = @BSSI_LineSeqNumber ORDER BY BSSI_PortfolioID ASC, BSSI_Charge_ID ASC, YEAR1 ASC, LNSEQNBR ASC, BSSI_LineSeqNumber ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699708SS_1] TO [DYNGRP]
GO
