SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610210F_1] (@SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @Item_Sequence_RS int, @BSSI_Rev_Sharing_ID_RS char(25), @LNITMSEQ_RS int, @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21), @Item_Sequence_RE int, @BSSI_Rev_Sharing_ID_RE char(25), @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, Item_Sequence, BSSI_Master_Lease_ID, BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Rev_Sharing_ID, BSSI_Rev_Sharing_Type, BSSI_Tenant_Lease_Number, SALSTERR, SLPRSNID, VENDORID, PMAPACCT_1, PMAPACCT_2, PMAPACCT_3, PMAPACCT_4, PMPRCHAC_1, PMPRCHAC_2, PMPRCHAC_3, PMPRCHAC_4, COMMAMNT, OCOMMAMT, CURRNIDX, OXTNDPRC, COMPRCNT, BSSI_Dummy, DEX_ROW_ID FROM .B4610210 ORDER BY SOPTYPE ASC, SOPNUMBE ASC, Item_Sequence ASC, BSSI_Rev_Sharing_ID ASC, LNITMSEQ ASC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, Item_Sequence, BSSI_Master_Lease_ID, BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Rev_Sharing_ID, BSSI_Rev_Sharing_Type, BSSI_Tenant_Lease_Number, SALSTERR, SLPRSNID, VENDORID, PMAPACCT_1, PMAPACCT_2, PMAPACCT_3, PMAPACCT_4, PMPRCHAC_1, PMPRCHAC_2, PMPRCHAC_3, PMPRCHAC_4, COMMAMNT, OCOMMAMT, CURRNIDX, OXTNDPRC, COMPRCNT, BSSI_Dummy, DEX_ROW_ID FROM .B4610210 WHERE SOPTYPE = @SOPTYPE_RS AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND Item_Sequence BETWEEN @Item_Sequence_RS AND @Item_Sequence_RE AND BSSI_Rev_Sharing_ID BETWEEN @BSSI_Rev_Sharing_ID_RS AND @BSSI_Rev_Sharing_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY SOPTYPE ASC, SOPNUMBE ASC, Item_Sequence ASC, BSSI_Rev_Sharing_ID ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, Item_Sequence, BSSI_Master_Lease_ID, BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Rev_Sharing_ID, BSSI_Rev_Sharing_Type, BSSI_Tenant_Lease_Number, SALSTERR, SLPRSNID, VENDORID, PMAPACCT_1, PMAPACCT_2, PMAPACCT_3, PMAPACCT_4, PMPRCHAC_1, PMPRCHAC_2, PMPRCHAC_3, PMPRCHAC_4, COMMAMNT, OCOMMAMT, CURRNIDX, OXTNDPRC, COMPRCNT, BSSI_Dummy, DEX_ROW_ID FROM .B4610210 WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND Item_Sequence BETWEEN @Item_Sequence_RS AND @Item_Sequence_RE AND BSSI_Rev_Sharing_ID BETWEEN @BSSI_Rev_Sharing_ID_RS AND @BSSI_Rev_Sharing_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY SOPTYPE ASC, SOPNUMBE ASC, Item_Sequence ASC, BSSI_Rev_Sharing_ID ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610210F_1] TO [DYNGRP]
GO
