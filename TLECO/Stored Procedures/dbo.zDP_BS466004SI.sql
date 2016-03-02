SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466004SI] (@VCHRNMBR char(21), @DOCTYPE smallint, @LNITMSEQ int, @BSSI_Template_ID char(25), @BSSI_Description char(51), @BSSI_Charge_ID char(25), @NOTEINDX numeric(19,5), @BSSI_AllocatedAmt numeric(19,5), @BSSI_Allocation_Percent numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .BS466004 (VCHRNMBR, DOCTYPE, LNITMSEQ, BSSI_Template_ID, BSSI_Description, BSSI_Charge_ID, NOTEINDX, BSSI_AllocatedAmt, BSSI_Allocation_Percent) VALUES ( @VCHRNMBR, @DOCTYPE, @LNITMSEQ, @BSSI_Template_ID, @BSSI_Description, @BSSI_Charge_ID, @NOTEINDX, @BSSI_AllocatedAmt, @BSSI_Allocation_Percent) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466004SI] TO [DYNGRP]
GO
