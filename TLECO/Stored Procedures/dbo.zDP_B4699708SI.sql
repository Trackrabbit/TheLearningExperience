SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699708SI] (@BSSI_PortfolioID char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @LNSEQNBR numeric(19,5), @BSSI_LineSeqNumber numeric(19,5), @BSSI_NonPtcbCtrbAmtInt numeric(19,5), @BSSI_Sales_Amount numeric(19,5), @DATE1 datetime, @BSSI_Description char(51), @USERID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4699708 (BSSI_PortfolioID, BSSI_Charge_ID, YEAR1, LNSEQNBR, BSSI_LineSeqNumber, BSSI_NonPtcbCtrbAmtInt, BSSI_Sales_Amount, DATE1, BSSI_Description, USERID) VALUES ( @BSSI_PortfolioID, @BSSI_Charge_ID, @YEAR1, @LNSEQNBR, @BSSI_LineSeqNumber, @BSSI_NonPtcbCtrbAmtInt, @BSSI_Sales_Amount, @DATE1, @BSSI_Description, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699708SI] TO [DYNGRP]
GO
