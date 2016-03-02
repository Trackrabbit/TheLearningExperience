SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_AAG00302SI] (@aaDistrQueryID int, @aaColumn smallint, @aaSelectOption smallint, @aaFromStr char(31), @aaToStr char(31), @aaFromNum numeric(19,5), @aaToNum numeric(19,5), @aaFromBool tinyint, @aaToBool tinyint, @aaFromDate datetime, @aaToDate datetime, @From_Account_Number_1 char(5), @From_Account_Number_2 char(5), @From_Account_Number_3 char(3), @From_Account_Number_4 char(3), @To_Account_Number_1 char(5), @To_Account_Number_2 char(5), @To_Account_Number_3 char(3), @To_Account_Number_4 char(3), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .AAG00302 (aaDistrQueryID, aaColumn, aaSelectOption, aaFromStr, aaToStr, aaFromNum, aaToNum, aaFromBool, aaToBool, aaFromDate, aaToDate, From_Account_Number_1, From_Account_Number_2, From_Account_Number_3, From_Account_Number_4, To_Account_Number_1, To_Account_Number_2, To_Account_Number_3, To_Account_Number_4) VALUES ( @aaDistrQueryID, @aaColumn, @aaSelectOption, @aaFromStr, @aaToStr, @aaFromNum, @aaToNum, @aaFromBool, @aaToBool, @aaFromDate, @aaToDate, @From_Account_Number_1, @From_Account_Number_2, @From_Account_Number_3, @From_Account_Number_4, @To_Account_Number_1, @To_Account_Number_2, @To_Account_Number_3, @To_Account_Number_4) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00302SI] TO [DYNGRP]
GO
