SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510046SI] (@MJW_Redemption_Number char(21), @MJW_Redemption_Reason char(51), @MJW_Redemption_Category smallint, @VENDORID char(15), @MJW_Offering_ID char(21), @MJW_Series_ID_From char(21), @MJW_Series_ID_To char(21), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510046 (MJW_Redemption_Number, MJW_Redemption_Reason, MJW_Redemption_Category, VENDORID, MJW_Offering_ID, MJW_Series_ID_From, MJW_Series_ID_To, NOTEINDX) VALUES ( @MJW_Redemption_Number, @MJW_Redemption_Reason, @MJW_Redemption_Category, @VENDORID, @MJW_Offering_ID, @MJW_Series_ID_From, @MJW_Series_ID_To, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510046SI] TO [DYNGRP]
GO
