SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510020SI] (@MJW_Series_ID char(21), @SHRTNAME char(15), @MJW_Series_Description char(51), @MJW_Series_Legal_Name char(65), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510020 (MJW_Series_ID, SHRTNAME, MJW_Series_Description, MJW_Series_Legal_Name, NOTEINDX) VALUES ( @MJW_Series_ID, @SHRTNAME, @MJW_Series_Description, @MJW_Series_Legal_Name, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510020SI] TO [DYNGRP]
GO
