SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699704SS_2] (@SOPNUMBE char(21), @SOPTYPE smallint, @BSSI_SOP_LINE_Sequence int, @JRNENTRY int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Lease_Number, LOCNCODE, BSSI_Lease_Origin, LNITMSEQ, BSSI_Charge_ID, LNSEQNBR, BSSI_LineSequence, JRNENTRY, YEAR1, PERIODID, STRTDATE, ENDDATE, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, VCHNUMWK, DOCTYPE, BSSI_LeaseTermination, BSSI_LseTerminationRever, DOCAMNT, DEX_ROW_ID FROM .B4699704 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE AND BSSI_SOP_LINE_Sequence = @BSSI_SOP_LINE_Sequence AND JRNENTRY = @JRNENTRY ORDER BY SOPNUMBE ASC, SOPTYPE ASC, BSSI_SOP_LINE_Sequence ASC, JRNENTRY ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699704SS_2] TO [DYNGRP]
GO