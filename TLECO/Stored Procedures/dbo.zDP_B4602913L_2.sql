SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602913L_2] (@BSSI_Ground_Lease_Number_RS char(25), @VENDORID_RS char(15), @BSSI_Ground_Lease_Number_RE char(25), @VENDORID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Ground_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, VENDORID, DOCAMNT, PRCNTAGE, NOTEINDX, DEX_ROW_ID FROM .B4602913 ORDER BY BSSI_Ground_Lease_Number DESC, VENDORID DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Ground_Lease_Number_RS = @BSSI_Ground_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, VENDORID, DOCAMNT, PRCNTAGE, NOTEINDX, DEX_ROW_ID FROM .B4602913 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number_RS AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY BSSI_Ground_Lease_Number DESC, VENDORID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, VENDORID, DOCAMNT, PRCNTAGE, NOTEINDX, DEX_ROW_ID FROM .B4602913 WHERE BSSI_Ground_Lease_Number BETWEEN @BSSI_Ground_Lease_Number_RS AND @BSSI_Ground_Lease_Number_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY BSSI_Ground_Lease_Number DESC, VENDORID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602913L_2] TO [DYNGRP]
GO
