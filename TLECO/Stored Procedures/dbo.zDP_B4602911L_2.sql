SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602911L_2] (@BSSI_Ground_Lease_Number_RS char(25), @BSSI_Period_Begin_RS datetime, @BSSI_Ground_Lease_Number_RE char(25), @BSSI_Period_Begin_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Ground_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Term, BSSI_Period_Begin, BSSI_Period_End, BSSI_Renewal_Type, BSSI_Lead_Time, BSSI_Notice_Requirements, DEX_ROW_ID FROM .B4602911 ORDER BY BSSI_Ground_Lease_Number DESC, BSSI_Period_Begin DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Ground_Lease_Number_RS = @BSSI_Ground_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Term, BSSI_Period_Begin, BSSI_Period_End, BSSI_Renewal_Type, BSSI_Lead_Time, BSSI_Notice_Requirements, DEX_ROW_ID FROM .B4602911 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number_RS AND BSSI_Period_Begin BETWEEN @BSSI_Period_Begin_RS AND @BSSI_Period_Begin_RE ORDER BY BSSI_Ground_Lease_Number DESC, BSSI_Period_Begin DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Term, BSSI_Period_Begin, BSSI_Period_End, BSSI_Renewal_Type, BSSI_Lead_Time, BSSI_Notice_Requirements, DEX_ROW_ID FROM .B4602911 WHERE BSSI_Ground_Lease_Number BETWEEN @BSSI_Ground_Lease_Number_RS AND @BSSI_Ground_Lease_Number_RE AND BSSI_Period_Begin BETWEEN @BSSI_Period_Begin_RS AND @BSSI_Period_Begin_RE ORDER BY BSSI_Ground_Lease_Number DESC, BSSI_Period_Begin DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602911L_2] TO [DYNGRP]
GO