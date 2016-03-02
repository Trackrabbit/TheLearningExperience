SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BSSI0100SI] (@SETUPKEY smallint, @BSSI_Registration char(15), @BSSI_Registration_Key2 char(15), @BSSI_Registration_Key3 char(255), @BSSI_Registration_Key4 char(255), @BSSI_Registration_Trail_ char(15), @BSSI_Registration_Trail2 char(15), @BSSI_Registration_Trail3 char(255), @BSSI_Registration_Trail4 char(255), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .BSSI0100 (SETUPKEY, BSSI_Registration, BSSI_Registration_Key2, BSSI_Registration_Key3, BSSI_Registration_Key4, BSSI_Registration_Trail_, BSSI_Registration_Trail2, BSSI_Registration_Trail3, BSSI_Registration_Trail4, NOTEINDX) VALUES ( @SETUPKEY, @BSSI_Registration, @BSSI_Registration_Key2, @BSSI_Registration_Key3, @BSSI_Registration_Key4, @BSSI_Registration_Trail_, @BSSI_Registration_Trail2, @BSSI_Registration_Trail3, @BSSI_Registration_Trail4, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BSSI0100SI] TO [DYNGRP]
GO
