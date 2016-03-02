SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699704L_2] (@SOPNUMBE_RS char(21), @SOPTYPE_RS smallint, @BSSI_SOP_LINE_Sequence_RS int, @JRNENTRY_RS int, @SOPNUMBE_RE char(21), @SOPTYPE_RE smallint, @BSSI_SOP_LINE_Sequence_RE int, @JRNENTRY_RE int) AS /* 12.00.0270.000 */ set nocount on IF @SOPNUMBE_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Number, LOCNCODE, BSSI_Lease_Origin, LNITMSEQ, BSSI_Charge_ID, LNSEQNBR, BSSI_LineSequence, JRNENTRY, YEAR1, PERIODID, STRTDATE, ENDDATE, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, VCHNUMWK, DOCTYPE, BSSI_LeaseTermination, BSSI_LseTerminationRever, DOCAMNT, DEX_ROW_ID FROM .B4699704 ORDER BY SOPNUMBE DESC, SOPTYPE DESC, BSSI_SOP_LINE_Sequence DESC, JRNENTRY DESC, DEX_ROW_ID DESC END ELSE IF @SOPNUMBE_RS = @SOPNUMBE_RE BEGIN SELECT TOP 25  BSSI_Lease_Number, LOCNCODE, BSSI_Lease_Origin, LNITMSEQ, BSSI_Charge_ID, LNSEQNBR, BSSI_LineSequence, JRNENTRY, YEAR1, PERIODID, STRTDATE, ENDDATE, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, VCHNUMWK, DOCTYPE, BSSI_LeaseTermination, BSSI_LseTerminationRever, DOCAMNT, DEX_ROW_ID FROM .B4699704 WHERE SOPNUMBE = @SOPNUMBE_RS AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND BSSI_SOP_LINE_Sequence BETWEEN @BSSI_SOP_LINE_Sequence_RS AND @BSSI_SOP_LINE_Sequence_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY SOPNUMBE DESC, SOPTYPE DESC, BSSI_SOP_LINE_Sequence DESC, JRNENTRY DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Number, LOCNCODE, BSSI_Lease_Origin, LNITMSEQ, BSSI_Charge_ID, LNSEQNBR, BSSI_LineSequence, JRNENTRY, YEAR1, PERIODID, STRTDATE, ENDDATE, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, VCHNUMWK, DOCTYPE, BSSI_LeaseTermination, BSSI_LseTerminationRever, DOCAMNT, DEX_ROW_ID FROM .B4699704 WHERE SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND BSSI_SOP_LINE_Sequence BETWEEN @BSSI_SOP_LINE_Sequence_RS AND @BSSI_SOP_LINE_Sequence_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY SOPNUMBE DESC, SOPTYPE DESC, BSSI_SOP_LINE_Sequence DESC, JRNENTRY DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699704L_2] TO [DYNGRP]
GO