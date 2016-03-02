SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699704SI] (@BSSI_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Lease_Origin smallint, @LNITMSEQ int, @BSSI_Charge_ID char(25), @LNSEQNBR numeric(19,5), @BSSI_LineSequence numeric(19,5), @JRNENTRY int, @YEAR1 smallint, @PERIODID smallint, @STRTDATE datetime, @ENDDATE datetime, @SOPTYPE smallint, @SOPNUMBE char(21), @BSSI_SOP_LINE_Sequence int, @VCHNUMWK char(17), @DOCTYPE smallint, @BSSI_LeaseTermination tinyint, @BSSI_LseTerminationRever tinyint, @DOCAMNT numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4699704 (BSSI_Lease_Number, LOCNCODE, BSSI_Lease_Origin, LNITMSEQ, BSSI_Charge_ID, LNSEQNBR, BSSI_LineSequence, JRNENTRY, YEAR1, PERIODID, STRTDATE, ENDDATE, SOPTYPE, SOPNUMBE, BSSI_SOP_LINE_Sequence, VCHNUMWK, DOCTYPE, BSSI_LeaseTermination, BSSI_LseTerminationRever, DOCAMNT) VALUES ( @BSSI_Lease_Number, @LOCNCODE, @BSSI_Lease_Origin, @LNITMSEQ, @BSSI_Charge_ID, @LNSEQNBR, @BSSI_LineSequence, @JRNENTRY, @YEAR1, @PERIODID, @STRTDATE, @ENDDATE, @SOPTYPE, @SOPNUMBE, @BSSI_SOP_LINE_Sequence, @VCHNUMWK, @DOCTYPE, @BSSI_LeaseTermination, @BSSI_LseTerminationRever, @DOCAMNT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699704SI] TO [DYNGRP]
GO
