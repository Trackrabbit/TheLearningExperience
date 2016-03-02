SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640710SI] (@LOCNCODE char(11), @LNITMSEQ int, @BSSI_Study_Number char(25), @BSSI_Height numeric(19,5), @BSSI_Height_AGL numeric(19,5), @BSSI_Advisory_Circular char(25), @BSSI_AMSL numeric(19,5), @BSSI_AMSL_Overal numeric(19,5), @BSSI_Issue_Date char(25), @BSSI_Dummy_Field tinyint, @BSSI_Determ_Expire_Date datetime, @BSSI_FAA_ML char(25), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640710 (LOCNCODE, LNITMSEQ, BSSI_Study_Number, BSSI_Height, BSSI_Height_AGL, BSSI_Advisory_Circular, BSSI_AMSL, BSSI_AMSL_Overal, BSSI_Issue_Date, BSSI_Dummy_Field, BSSI_Determ_Expire_Date, BSSI_FAA_ML, NOTEINDX) VALUES ( @LOCNCODE, @LNITMSEQ, @BSSI_Study_Number, @BSSI_Height, @BSSI_Height_AGL, @BSSI_Advisory_Circular, @BSSI_AMSL, @BSSI_AMSL_Overal, @BSSI_Issue_Date, @BSSI_Dummy_Field, @BSSI_Determ_Expire_Date, @BSSI_FAA_ML, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640710SI] TO [DYNGRP]
GO
