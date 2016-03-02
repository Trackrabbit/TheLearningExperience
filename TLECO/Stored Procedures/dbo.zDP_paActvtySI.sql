SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_paActvtySI] (@LockboxID char(15), @DATE1 datetime, @TIME1 datetime, @USERID char(15), @BACHNUMB char(15), @BCHTOTAL numeric(19,5), @NUMOFTRX int, @NoOfTrxRejected int, @STRNG132 char(133), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .paActvty (LockboxID, DATE1, TIME1, USERID, BACHNUMB, BCHTOTAL, NUMOFTRX, NoOfTrxRejected, STRNG132) VALUES ( @LockboxID, @DATE1, @TIME1, @USERID, @BACHNUMB, @BCHTOTAL, @NUMOFTRX, @NoOfTrxRejected, @STRNG132) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_paActvtySI] TO [DYNGRP]
GO
