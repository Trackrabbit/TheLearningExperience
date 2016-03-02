SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC30001SI] (@CURNCYID char(15), @CURRNIDX smallint, @ACTINDX int, @HSTYEAR smallint, @PERIODID smallint, @Ledger_ID smallint, @FUNCTAMT numeric(19,5), @ORIGAMT numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .MC30001 (CURNCYID, CURRNIDX, ACTINDX, HSTYEAR, PERIODID, Ledger_ID, FUNCTAMT, ORIGAMT) VALUES ( @CURNCYID, @CURRNIDX, @ACTINDX, @HSTYEAR, @PERIODID, @Ledger_ID, @FUNCTAMT, @ORIGAMT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC30001SI] TO [DYNGRP]
GO
