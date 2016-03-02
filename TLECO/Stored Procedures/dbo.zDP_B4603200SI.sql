SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603200SI] (@BSSI_CPI_Schedule_ID char(25), @BSSI_Description char(51), @DATE1 datetime, @TIME1 datetime, @USERID char(15), @NOTEINDX numeric(19,5), @BSSI_CPIIndexCalculation smallint, @BSSI_CPIIndexAmtCalculat smallint, @BSSI_EscalateEffective tinyint, @BSSI_Dummy tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4603200 (BSSI_CPI_Schedule_ID, BSSI_Description, DATE1, TIME1, USERID, NOTEINDX, BSSI_CPIIndexCalculation, BSSI_CPIIndexAmtCalculat, BSSI_EscalateEffective, BSSI_Dummy) VALUES ( @BSSI_CPI_Schedule_ID, @BSSI_Description, @DATE1, @TIME1, @USERID, @NOTEINDX, @BSSI_CPIIndexCalculation, @BSSI_CPIIndexAmtCalculat, @BSSI_EscalateEffective, @BSSI_Dummy) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603200SI] TO [DYNGRP]
GO
