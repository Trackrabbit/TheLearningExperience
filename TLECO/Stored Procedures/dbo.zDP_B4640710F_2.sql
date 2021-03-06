SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640710F_2] (@LOCNCODE_RS char(11), @BSSI_Study_Number_RS char(25), @LOCNCODE_RE char(11), @BSSI_Study_Number_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Study_Number, BSSI_Height, BSSI_Height_AGL, BSSI_Advisory_Circular, BSSI_AMSL, BSSI_AMSL_Overal, BSSI_Issue_Date, BSSI_Dummy_Field, BSSI_Determ_Expire_Date, BSSI_FAA_ML, NOTEINDX, DEX_ROW_ID FROM .B4640710 ORDER BY LOCNCODE ASC, BSSI_Study_Number ASC, DEX_ROW_ID ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Study_Number, BSSI_Height, BSSI_Height_AGL, BSSI_Advisory_Circular, BSSI_AMSL, BSSI_AMSL_Overal, BSSI_Issue_Date, BSSI_Dummy_Field, BSSI_Determ_Expire_Date, BSSI_FAA_ML, NOTEINDX, DEX_ROW_ID FROM .B4640710 WHERE LOCNCODE = @LOCNCODE_RS AND BSSI_Study_Number BETWEEN @BSSI_Study_Number_RS AND @BSSI_Study_Number_RE ORDER BY LOCNCODE ASC, BSSI_Study_Number ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Study_Number, BSSI_Height, BSSI_Height_AGL, BSSI_Advisory_Circular, BSSI_AMSL, BSSI_AMSL_Overal, BSSI_Issue_Date, BSSI_Dummy_Field, BSSI_Determ_Expire_Date, BSSI_FAA_ML, NOTEINDX, DEX_ROW_ID FROM .B4640710 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Study_Number BETWEEN @BSSI_Study_Number_RS AND @BSSI_Study_Number_RE ORDER BY LOCNCODE ASC, BSSI_Study_Number ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640710F_2] TO [DYNGRP]
GO
