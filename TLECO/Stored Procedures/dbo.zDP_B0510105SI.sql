SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510105SI] (@MJW_Investor_Group_ID char(41), @MJW_Investor_Group_Name char(65), @MJW_Investor_ID char(21), @ADRSCODE char(15), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510105 (MJW_Investor_Group_ID, MJW_Investor_Group_Name, MJW_Investor_ID, ADRSCODE, NOTEINDX) VALUES ( @MJW_Investor_Group_ID, @MJW_Investor_Group_Name, @MJW_Investor_ID, @ADRSCODE, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510105SI] TO [DYNGRP]
GO
