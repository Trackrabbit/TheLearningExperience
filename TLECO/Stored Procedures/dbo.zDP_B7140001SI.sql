SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7140001SI] (@SOPNUMBE char(21), @SOPTYPE smallint, @LNITMSEQ int, @CMPNTSEQ int, @BSSI_Line_Item_Sequence int, @MDFUSRID char(15), @MODIFDT datetime, @TIME1 datetime, @ENDDATE datetime, @BSSI_OrigDeferralEndDate datetime, @BSSI_ReasonForChange char(55), @BSSI_MethodEndDateChg smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7140001 (SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, BSSI_Line_Item_Sequence, MDFUSRID, MODIFDT, TIME1, ENDDATE, BSSI_OrigDeferralEndDate, BSSI_ReasonForChange, BSSI_MethodEndDateChg) VALUES ( @SOPNUMBE, @SOPTYPE, @LNITMSEQ, @CMPNTSEQ, @BSSI_Line_Item_Sequence, @MDFUSRID, @MODIFDT, @TIME1, @ENDDATE, @BSSI_OrigDeferralEndDate, @BSSI_ReasonForChange, @BSSI_MethodEndDateChg) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7140001SI] TO [DYNGRP]
GO
