SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42100SI] (@Pay_Schedule char(15), @DSCRIPTN char(31), @PAYPEROD smallint, @Past_Pay_Periods smallint, @Current_Pay_Periods smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR42100 (Pay_Schedule, DSCRIPTN, PAYPEROD, Past_Pay_Periods, Current_Pay_Periods) VALUES ( @Pay_Schedule, @DSCRIPTN, @PAYPEROD, @Past_Pay_Periods, @Current_Pay_Periods) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42100SI] TO [DYNGRP]
GO
