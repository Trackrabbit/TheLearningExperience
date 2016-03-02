SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699704SS_6] (@BSSI_Lease_Origin smallint, @BSSI_Lease_Number char(25), @LOCNCODE char(11), @LNITMSEQ int, @BSSI_LeaseTermination tinyint, @BSSI_LseTerminationRever tinyint, @LNSEQNBR numeric(19,5), @BSSI_LineSequence numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Lease_Number, LOCNCODE, BSSI_Lease_Origin, LNITMSEQ, BSSI_Charge_ID, LNSEQNBR, BSSI_LineSequence, JRNENTRY, YEAR1, PERIODID, STRTDATE, ENDDATE, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, VCHNUMWK, DOCTYPE, BSSI_LeaseTermination, BSSI_LseTerminationRever, DOCAMNT, DEX_ROW_ID FROM .B4699704 WHERE BSSI_Lease_Origin = @BSSI_Lease_Origin AND BSSI_Lease_Number = @BSSI_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND BSSI_LeaseTermination = @BSSI_LeaseTermination AND BSSI_LseTerminationRever = @BSSI_LseTerminationRever AND LNSEQNBR = @LNSEQNBR AND BSSI_LineSequence = @BSSI_LineSequence ORDER BY BSSI_Lease_Origin ASC, BSSI_Lease_Number ASC, LOCNCODE ASC, LNITMSEQ ASC, BSSI_LeaseTermination ASC, BSSI_LseTerminationRever ASC, LNSEQNBR ASC, BSSI_LineSequence ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699704SS_6] TO [DYNGRP]
GO
