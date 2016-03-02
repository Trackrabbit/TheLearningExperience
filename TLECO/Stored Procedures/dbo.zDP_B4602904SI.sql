SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602904SI] (@BSSI_Ground_Lease_Number char(25), @LNITMSEQ int, @BSSI_Contact_Option smallint, @BSSI_Contact_ID char(25), @ADRSCODE char(15), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602904 (BSSI_Ground_Lease_Number, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, NOTEINDX) VALUES ( @BSSI_Ground_Lease_Number, @LNITMSEQ, @BSSI_Contact_Option, @BSSI_Contact_ID, @ADRSCODE, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602904SI] TO [DYNGRP]
GO
