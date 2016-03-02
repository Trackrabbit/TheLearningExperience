SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0540100SI] (@SLPRSNID char(15), @MJW_Investor_ID char(21), @MJW_Offering_ID char(21), @LNITMSEQ int, @NAME char(31), @SLPRSNFN char(15), @SPRSNSLN char(21), @PHONE1 char(21), @FAX char(21), @MJW_Offering_Name char(65), @MJW_Investor_Name char(65), @CHEKAMNT numeric(19,5), @MJW_Date_Accept datetime, @MJW_Distribution_Amount numeric(19,5), @BSSI_Dist_Status char(21), @BSSI_Investment_Amount numeric(19,5), @CHEKNMBR char(21), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0540100 (SLPRSNID, MJW_Investor_ID, MJW_Offering_ID, LNITMSEQ, NAME, SLPRSNFN, SPRSNSLN, PHONE1, FAX, MJW_Offering_Name, MJW_Investor_Name, CHEKAMNT, MJW_Date_Accept, MJW_Distribution_Amount, BSSI_Dist_Status, BSSI_Investment_Amount, CHEKNMBR) VALUES ( @SLPRSNID, @MJW_Investor_ID, @MJW_Offering_ID, @LNITMSEQ, @NAME, @SLPRSNFN, @SPRSNSLN, @PHONE1, @FAX, @MJW_Offering_Name, @MJW_Investor_Name, @CHEKAMNT, @MJW_Date_Accept, @MJW_Distribution_Amount, @BSSI_Dist_Status, @BSSI_Investment_Amount, @CHEKNMBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0540100SI] TO [DYNGRP]
GO
