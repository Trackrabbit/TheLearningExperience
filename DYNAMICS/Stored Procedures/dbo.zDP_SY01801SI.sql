SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01801SI] (@CMPANYID smallint, @SEQNUMBR int, @Offline_Date datetime, @Offline_Time datetime, @Offline_User char(15), @Online_Date datetime, @Online_Time datetime, @Online_User char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY01801 (CMPANYID, SEQNUMBR, Offline_Date, Offline_Time, Offline_User, Online_Date, Online_Time, Online_User) VALUES ( @CMPANYID, @SEQNUMBR, @Offline_Date, @Offline_Time, @Offline_User, @Online_Date, @Online_Time, @Online_User) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01801SI] TO [DYNGRP]
GO
