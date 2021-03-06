SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00700SI] (@EMPLOYID char(15), @STATECD char(3), @TXFLGSTS char(7), @EXMFBLND tinyint, @EXFBLSPS tinyint, @EXFORO65 tinyint, @EXMFRSLF tinyint, @EXMFSPAL tinyint, @EXMFRSPS tinyint, @EXFSPO65 tinyint, @PRSNEXPT smallint, @DEPNDNTS smallint, @ADNLALOW smallint, @ESTDEDAL smallint, @EXMTAMNT numeric(19,5), @ADSTWHDG numeric(19,5), @ESTSTWHD numeric(19,5), @INACTIVE tinyint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR00700 (EMPLOYID, STATECD, TXFLGSTS, EXMFBLND, EXFBLSPS, EXFORO65, EXMFRSLF, EXMFSPAL, EXMFRSPS, EXFSPO65, PRSNEXPT, DEPNDNTS, ADNLALOW, ESTDEDAL, EXMTAMNT, ADSTWHDG, ESTSTWHD, INACTIVE, NOTEINDX) VALUES ( @EMPLOYID, @STATECD, @TXFLGSTS, @EXMFBLND, @EXFBLSPS, @EXFORO65, @EXMFRSLF, @EXMFSPAL, @EXMFRSPS, @EXFSPO65, @PRSNEXPT, @DEPNDNTS, @ADNLALOW, @ESTDEDAL, @EXMTAMNT, @ADSTWHDG, @ESTSTWHD, @INACTIVE, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00700SI] TO [DYNGRP]
GO
