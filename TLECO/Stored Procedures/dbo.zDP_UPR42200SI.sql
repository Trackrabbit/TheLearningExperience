SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42200SI] (@Time_on_Behalf_Code char(15), @DSCRIPTN char(31), @INACTIVE tinyint, @Admin_Code tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR42200 (Time_on_Behalf_Code, DSCRIPTN, INACTIVE, Admin_Code) VALUES ( @Time_on_Behalf_Code, @DSCRIPTN, @INACTIVE, @Admin_Code) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42200SI] TO [DYNGRP]
GO
