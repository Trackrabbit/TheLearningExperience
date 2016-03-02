SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY07255SI] (@ActionStatusID int, @ORD int, @ERMSGTXT char(255), @ERRVAL int, @REFRENCE char(31), @User_Defined_Date01 datetime, @User_Defined_Date02 datetime, @User_Defined_LongInt01 int, @User_Defined_LongInt02 int, @User_Defined_Text01 char(31), @User_Defined_Text02 char(31), @User_Defined_Text03 char(31), @User_Defined_Text04 char(31), @User_Defined_Text05 char(31), @VERIFIED tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY07255 (ActionStatusID, ORD, ERMSGTXT, ERRVAL, REFRENCE, User_Defined_Date01, User_Defined_Date02, User_Defined_LongInt01, User_Defined_LongInt02, User_Defined_Text01, User_Defined_Text02, User_Defined_Text03, User_Defined_Text04, User_Defined_Text05, VERIFIED) VALUES ( @ActionStatusID, @ORD, @ERMSGTXT, @ERRVAL, @REFRENCE, @User_Defined_Date01, @User_Defined_Date02, @User_Defined_LongInt01, @User_Defined_LongInt02, @User_Defined_Text01, @User_Defined_Text02, @User_Defined_Text03, @User_Defined_Text04, @User_Defined_Text05, @VERIFIED) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY07255SI] TO [DYNGRP]
GO
