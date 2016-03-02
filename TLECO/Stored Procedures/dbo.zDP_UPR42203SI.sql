SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42203SI] (@Time_on_Behalf_Code char(15), @Employee_ID_Assigned char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR42203 (Time_on_Behalf_Code, Employee_ID_Assigned) VALUES ( @Time_on_Behalf_Code, @Employee_ID_Assigned) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42203SI] TO [DYNGRP]
GO
