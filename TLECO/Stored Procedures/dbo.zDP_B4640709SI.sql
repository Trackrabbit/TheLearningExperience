SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640709SI] (@LOCNCODE char(11), @LNITMSEQ int, @BSSI_Insurance_Type_ID char(25), @BSSI_Required_Amount numeric(19,5), @BSSI_Certificate_Number char(25), @BSSI_Policy_Number char(25), @BSSI_Insurer char(51), @BSSI_Policy_Cost numeric(19,5), @BSSI_Commencement_Date datetime, @BSSI_Termination_Date datetime, @BSSI_Policy_Amount numeric(19,5), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640709 (LOCNCODE, LNITMSEQ, BSSI_Insurance_Type_ID, BSSI_Required_Amount, BSSI_Certificate_Number, BSSI_Policy_Number, BSSI_Insurer, BSSI_Policy_Cost, BSSI_Commencement_Date, BSSI_Termination_Date, BSSI_Policy_Amount, NOTEINDX) VALUES ( @LOCNCODE, @LNITMSEQ, @BSSI_Insurance_Type_ID, @BSSI_Required_Amount, @BSSI_Certificate_Number, @BSSI_Policy_Number, @BSSI_Insurer, @BSSI_Policy_Cost, @BSSI_Commencement_Date, @BSSI_Termination_Date, @BSSI_Policy_Amount, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640709SI] TO [DYNGRP]
GO
