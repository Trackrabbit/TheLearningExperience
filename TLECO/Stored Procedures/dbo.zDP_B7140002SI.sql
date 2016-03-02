SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7140002SI] (@SOPNUMBE char(21), @SOPTYPE smallint, @LNITMSEQ int, @CMPNTSEQ int, @BSSI_Line_Item_Sequence int, @MDFUSRID char(15), @MODIFDT datetime, @TIME1 datetime, @BSSI_Identifier char(31), @BSSI_OrigDeferralID char(31), @BSSI_ReasonForChange char(55), @BSSI_MethodChange smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7140002 (SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, BSSI_Line_Item_Sequence, MDFUSRID, MODIFDT, TIME1, BSSI_Identifier, BSSI_OrigDeferralID, BSSI_ReasonForChange, BSSI_MethodChange) VALUES ( @SOPNUMBE, @SOPTYPE, @LNITMSEQ, @CMPNTSEQ, @BSSI_Line_Item_Sequence, @MDFUSRID, @MODIFDT, @TIME1, @BSSI_Identifier, @BSSI_OrigDeferralID, @BSSI_ReasonForChange, @BSSI_MethodChange) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7140002SI] TO [DYNGRP]
GO
