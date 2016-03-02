SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510200SI] (@VENDORID char(15), @ADRSCODE char(15), @MJW_Address_Type char(21), @MJW_Email1 char(51), @MJW_Email_2 char(51), @MJW_Season_Start_Date datetime, @MJW_Season_End_Date datetime, @MJW_Temp_Field tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510200 (VENDORID, ADRSCODE, MJW_Address_Type, MJW_Email1, MJW_Email_2, MJW_Season_Start_Date, MJW_Season_End_Date, MJW_Temp_Field) VALUES ( @VENDORID, @ADRSCODE, @MJW_Address_Type, @MJW_Email1, @MJW_Email_2, @MJW_Season_Start_Date, @MJW_Season_End_Date, @MJW_Temp_Field) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510200SI] TO [DYNGRP]
GO
