SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20600SI] (@Xfr_Record_Number numeric(19,5), @CMXFRNUM char(21), @CMFRMRECNUM numeric(19,5), @CMTORECNUM numeric(19,5), @CMFRMSTATUS smallint, @CMTOSTATUS smallint, @CMFRMCHKBKID char(15), @CMCHKBKID char(15), @CMXFTDATE datetime, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CM20600 (Xfr_Record_Number, CMXFRNUM, CMFRMRECNUM, CMTORECNUM, CMFRMSTATUS, CMTOSTATUS, CMFRMCHKBKID, CMCHKBKID, CMXFTDATE, NOTEINDX) VALUES ( @Xfr_Record_Number, @CMXFRNUM, @CMFRMRECNUM, @CMTORECNUM, @CMFRMSTATUS, @CMTOSTATUS, @CMFRMCHKBKID, @CMCHKBKID, @CMXFTDATE, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20600SI] TO [DYNGRP]
GO
