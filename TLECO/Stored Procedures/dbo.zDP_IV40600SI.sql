SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40600SI] (@USCATVAL char(11), @USCATNUM smallint, @Image_URL char(255), @UserCatLongDescr char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV40600 (USCATVAL, USCATNUM, Image_URL, UserCatLongDescr) VALUES ( @USCATVAL, @USCATNUM, @Image_URL, @UserCatLongDescr) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40600SI] TO [DYNGRP]
GO
