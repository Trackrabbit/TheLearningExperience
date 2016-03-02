SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00203SI] (@EMPLOYID char(15), @Time_on_Behalf_Code char(15), @Employee_ID_Assigned char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR00203 (EMPLOYID, Time_on_Behalf_Code, Employee_ID_Assigned) VALUES ( @EMPLOYID, @Time_on_Behalf_Code, @Employee_ID_Assigned) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00203SI] TO [DYNGRP]
GO
