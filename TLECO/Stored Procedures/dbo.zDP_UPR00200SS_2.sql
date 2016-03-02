SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00200SS_2] (@Time_on_Behalf_Code char(15), @EMPLOYID char(15)) AS  set nocount on SELECT TOP 1  EMPLOYID, Time_on_Behalf_Code, INACTIVE, Admin_Code, DEX_ROW_ID FROM .UPR00200 WHERE Time_on_Behalf_Code = @Time_on_Behalf_Code AND EMPLOYID = @EMPLOYID ORDER BY Time_on_Behalf_Code ASC, EMPLOYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00200SS_2] TO [DYNGRP]
GO
