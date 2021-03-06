SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_LK000002SI] (@LK_Link_No int, @DSCRIPTN char(31), @LK_Link_Date datetime, @CREATDDT datetime, @LSTDTEDT datetime, @LK_Link_Balance numeric(19,5), @USERID char(15), @LSTUSRED char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .LK000002 (LK_Link_No, DSCRIPTN, LK_Link_Date, CREATDDT, LSTDTEDT, LK_Link_Balance, USERID, LSTUSRED) VALUES ( @LK_Link_No, @DSCRIPTN, @LK_Link_Date, @CREATDDT, @LSTDTEDT, @LK_Link_Balance, @USERID, @LSTUSRED) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_LK000002SI] TO [DYNGRP]
GO
