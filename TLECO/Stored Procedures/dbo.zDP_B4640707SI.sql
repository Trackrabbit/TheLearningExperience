SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640707SI] (@LOCNCODE char(11), @LNITMSEQ int, @BSSI_FCC_Registration char(25), @BSSI_Tower_Lit char(25), @BSSI_Painting_Req char(25), @BSSI_Chapters_Painting char(25), @BSSI_Lighting_System char(25), @BSSI_Filed char(25), @BSSI_Ordered char(25), @BSSI_File_Number char(25), @BSSI_Date_Build char(25), @BSSI_GE_Height char(25), @BSSI_Height_wo char(25), @BSSI_Overall_Ht char(25), @BSSI_AMSL_Meters char(25), @BSSI_FCCFAA_Match char(25), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640707 (LOCNCODE, LNITMSEQ, BSSI_FCC_Registration, BSSI_Tower_Lit, BSSI_Painting_Req, BSSI_Chapters_Painting, BSSI_Lighting_System, BSSI_Filed, BSSI_Ordered, BSSI_File_Number, BSSI_Date_Build, BSSI_GE_Height, BSSI_Height_wo, BSSI_Overall_Ht, BSSI_AMSL_Meters, BSSI_FCCFAA_Match, NOTEINDX) VALUES ( @LOCNCODE, @LNITMSEQ, @BSSI_FCC_Registration, @BSSI_Tower_Lit, @BSSI_Painting_Req, @BSSI_Chapters_Painting, @BSSI_Lighting_System, @BSSI_Filed, @BSSI_Ordered, @BSSI_File_Number, @BSSI_Date_Build, @BSSI_GE_Height, @BSSI_Height_wo, @BSSI_Overall_Ht, @BSSI_AMSL_Meters, @BSSI_FCCFAA_Match, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640707SI] TO [DYNGRP]
GO
