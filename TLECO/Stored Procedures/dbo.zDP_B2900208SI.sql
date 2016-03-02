SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900208SI] (@BSSI_ImportID char(15), @DATE1 datetime, @INTEREST_AMOUNT numeric(19,5), @USERID char(15), @ERRDESCR char(131), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900208 (BSSI_ImportID, DATE1, INTEREST_AMOUNT, USERID, ERRDESCR) VALUES ( @BSSI_ImportID, @DATE1, @INTEREST_AMOUNT, @USERID, @ERRDESCR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900208SI] TO [DYNGRP]
GO