SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602944UN_2] (@BS int, @DOCTYPE smallint, @VCHNUMWK char(17), @DOCTYPE_RS smallint, @VCHNUMWK_RS char(17), @DOCTYPE_RE smallint, @VCHNUMWK_RE char(17)) AS /* 12.00.0270.000 */ set nocount on IF @DOCTYPE_RS IS NULL BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, DOCTYPE, VCHNUMWK, VENDORID, DEX_ROW_ID FROM .B4602944 WHERE ( DOCTYPE = @DOCTYPE AND VCHNUMWK > @VCHNUMWK OR DOCTYPE > @DOCTYPE ) ORDER BY DOCTYPE ASC, VCHNUMWK ASC, DEX_ROW_ID ASC END ELSE IF @DOCTYPE_RS = @DOCTYPE_RE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, DOCTYPE, VCHNUMWK, VENDORID, DEX_ROW_ID FROM .B4602944 WHERE DOCTYPE = @DOCTYPE_RS AND VCHNUMWK BETWEEN @VCHNUMWK_RS AND @VCHNUMWK_RE AND ( DOCTYPE = @DOCTYPE AND VCHNUMWK > @VCHNUMWK OR DOCTYPE > @DOCTYPE ) ORDER BY DOCTYPE ASC, VCHNUMWK ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, DOCTYPE, VCHNUMWK, VENDORID, DEX_ROW_ID FROM .B4602944 WHERE DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND VCHNUMWK BETWEEN @VCHNUMWK_RS AND @VCHNUMWK_RE AND ( DOCTYPE = @DOCTYPE AND VCHNUMWK > @VCHNUMWK OR DOCTYPE > @DOCTYPE ) ORDER BY DOCTYPE ASC, VCHNUMWK ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602944UN_2] TO [DYNGRP]
GO
