SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699704F_6] (@BSSI_Lease_Origin_RS smallint, @BSSI_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @LNITMSEQ_RS int, @BSSI_LeaseTermination_RS tinyint, @BSSI_LseTerminationRever_RS tinyint, @LNSEQNBR_RS numeric(19,5), @BSSI_LineSequence_RS numeric(19,5), @BSSI_Lease_Origin_RE smallint, @BSSI_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @LNITMSEQ_RE int, @BSSI_LeaseTermination_RE tinyint, @BSSI_LseTerminationRever_RE tinyint, @LNSEQNBR_RE numeric(19,5), @BSSI_LineSequence_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Lease_Origin_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Number, LOCNCODE, BSSI_Lease_Origin, LNITMSEQ, BSSI_Charge_ID, LNSEQNBR, BSSI_LineSequence, JRNENTRY, YEAR1, PERIODID, STRTDATE, ENDDATE, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, VCHNUMWK, DOCTYPE, BSSI_LeaseTermination, BSSI_LseTerminationRever, DOCAMNT, DEX_ROW_ID FROM .B4699704 ORDER BY BSSI_Lease_Origin ASC, BSSI_Lease_Number ASC, LOCNCODE ASC, LNITMSEQ ASC, BSSI_LeaseTermination ASC, BSSI_LseTerminationRever ASC, LNSEQNBR ASC, BSSI_LineSequence ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Lease_Origin_RS = @BSSI_Lease_Origin_RE BEGIN SELECT TOP 25  BSSI_Lease_Number, LOCNCODE, BSSI_Lease_Origin, LNITMSEQ, BSSI_Charge_ID, LNSEQNBR, BSSI_LineSequence, JRNENTRY, YEAR1, PERIODID, STRTDATE, ENDDATE, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, VCHNUMWK, DOCTYPE, BSSI_LeaseTermination, BSSI_LseTerminationRever, DOCAMNT, DEX_ROW_ID FROM .B4699704 WHERE BSSI_Lease_Origin = @BSSI_Lease_Origin_RS AND BSSI_Lease_Number BETWEEN @BSSI_Lease_Number_RS AND @BSSI_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND BSSI_LeaseTermination BETWEEN @BSSI_LeaseTermination_RS AND @BSSI_LeaseTermination_RE AND BSSI_LseTerminationRever BETWEEN @BSSI_LseTerminationRever_RS AND @BSSI_LseTerminationRever_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND BSSI_LineSequence BETWEEN @BSSI_LineSequence_RS AND @BSSI_LineSequence_RE ORDER BY BSSI_Lease_Origin ASC, BSSI_Lease_Number ASC, LOCNCODE ASC, LNITMSEQ ASC, BSSI_LeaseTermination ASC, BSSI_LseTerminationRever ASC, LNSEQNBR ASC, BSSI_LineSequence ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Number, LOCNCODE, BSSI_Lease_Origin, LNITMSEQ, BSSI_Charge_ID, LNSEQNBR, BSSI_LineSequence, JRNENTRY, YEAR1, PERIODID, STRTDATE, ENDDATE, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, VCHNUMWK, DOCTYPE, BSSI_LeaseTermination, BSSI_LseTerminationRever, DOCAMNT, DEX_ROW_ID FROM .B4699704 WHERE BSSI_Lease_Origin BETWEEN @BSSI_Lease_Origin_RS AND @BSSI_Lease_Origin_RE AND BSSI_Lease_Number BETWEEN @BSSI_Lease_Number_RS AND @BSSI_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND BSSI_LeaseTermination BETWEEN @BSSI_LeaseTermination_RS AND @BSSI_LeaseTermination_RE AND BSSI_LseTerminationRever BETWEEN @BSSI_LseTerminationRever_RS AND @BSSI_LseTerminationRever_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE AND BSSI_LineSequence BETWEEN @BSSI_LineSequence_RS AND @BSSI_LineSequence_RE ORDER BY BSSI_Lease_Origin ASC, BSSI_Lease_Number ASC, LOCNCODE ASC, LNITMSEQ ASC, BSSI_LeaseTermination ASC, BSSI_LseTerminationRever ASC, LNSEQNBR ASC, BSSI_LineSequence ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699704F_6] TO [DYNGRP]
GO
