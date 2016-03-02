SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640707SS_2] (@LOCNCODE char(11), @BSSI_FCC_Registration char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LOCNCODE, LNITMSEQ, BSSI_FCC_Registration, BSSI_Tower_Lit, BSSI_Painting_Req, BSSI_Chapters_Painting, BSSI_Lighting_System, BSSI_Filed, BSSI_Ordered, BSSI_File_Number, BSSI_Date_Build, BSSI_GE_Height, BSSI_Height_wo, BSSI_Overall_Ht, BSSI_AMSL_Meters, BSSI_FCCFAA_Match, NOTEINDX, DEX_ROW_ID FROM .B4640707 WHERE LOCNCODE = @LOCNCODE AND BSSI_FCC_Registration = @BSSI_FCC_Registration ORDER BY LOCNCODE ASC, BSSI_FCC_Registration ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640707SS_2] TO [DYNGRP]
GO
