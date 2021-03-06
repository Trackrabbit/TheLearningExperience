SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930403F_2] (@BACHNUMB_RS char(15), @BACHNUMB_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, LNSEQNBR, BSSI_Lease_Loan_Number, BSSI_Recog_Frequency, STRTDATE, ENDDATE, PAYMENT_AMOUNT, CHRGAMNT, MKTOPROC, BACHNUMB, TTLPYMTS, BSSI_Processed, DEX_ROW_ID FROM .B2930403 ORDER BY BACHNUMB ASC, DEX_ROW_ID ASC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, LNSEQNBR, BSSI_Lease_Loan_Number, BSSI_Recog_Frequency, STRTDATE, ENDDATE, PAYMENT_AMOUNT, CHRGAMNT, MKTOPROC, BACHNUMB, TTLPYMTS, BSSI_Processed, DEX_ROW_ID FROM .B2930403 WHERE BACHNUMB = @BACHNUMB_RS ORDER BY BACHNUMB ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SCHEDULE_NUMBER, Schedule_Payment_Number, LNSEQNBR, BSSI_Lease_Loan_Number, BSSI_Recog_Frequency, STRTDATE, ENDDATE, PAYMENT_AMOUNT, CHRGAMNT, MKTOPROC, BACHNUMB, TTLPYMTS, BSSI_Processed, DEX_ROW_ID FROM .B2930403 WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE ORDER BY BACHNUMB ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930403F_2] TO [DYNGRP]
GO
