SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510102SI] (@VENDORID char(15), @MJW_Offering_ID char(21), @LNITMSEQ int, @MJW_Agency char(51), @MJW_Selling_Date datetime, @MJW_Who_Letter char(51), @MJW_Cleared_Date datetime, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510102 (VENDORID, MJW_Offering_ID, LNITMSEQ, MJW_Agency, MJW_Selling_Date, MJW_Who_Letter, MJW_Cleared_Date, NOTEINDX) VALUES ( @VENDORID, @MJW_Offering_ID, @LNITMSEQ, @MJW_Agency, @MJW_Selling_Date, @MJW_Who_Letter, @MJW_Cleared_Date, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510102SI] TO [DYNGRP]
GO
