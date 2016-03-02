SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00200SI] (@EMPLOYID char(15), @Time_on_Behalf_Code char(15), @INACTIVE tinyint, @Admin_Code tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR00200 (EMPLOYID, Time_on_Behalf_Code, INACTIVE, Admin_Code) VALUES ( @EMPLOYID, @Time_on_Behalf_Code, @INACTIVE, @Admin_Code) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00200SI] TO [DYNGRP]
GO
