SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_AAG00314SS_1] (@aaMLQueryID int, @aaColumn smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  aaMLQueryID, aaColumn, aaUseTree, aaUseCodes, aaTreeID, aaTreeLevel, aaInclEmptyCodes, aaSelectOption, aaFromStr, aaToStr, aaFromNum, aaToNum, aaFromBool, aaToBool, aaFromDate, aaToDate, From_Account_Number_1, From_Account_Number_2, From_Account_Number_3, From_Account_Number_4, To_Account_Number_1, To_Account_Number_2, To_Account_Number_3, To_Account_Number_4, DEX_ROW_ID FROM .AAG00314 WHERE aaMLQueryID = @aaMLQueryID AND aaColumn = @aaColumn ORDER BY aaMLQueryID ASC, aaColumn ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG00314SS_1] TO [DYNGRP]
GO
