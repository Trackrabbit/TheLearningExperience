SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR00300SI] (@NOTEINDX numeric(19,5), @EMPLOYID char(15), @EXMFRFED tinyint, @FDFLGSTS char(7), @FEDEXMPT smallint, @ADFDWHDG numeric(19,5), @ESTFEDWH numeric(19,5), @STATECD char(3), @LOCALTAX char(7), @W2BF942E tinyint, @W2BFDCSD tinyint, @W2BFDCMP tinyint, @W2BFLREP tinyint, @W2BFPPLN tinyint, @W2BFSTEM tinyint, @MCRQGEMP tinyint, @EICFLGST char(7), @NYTXDiff tinyint, @QualifiedHire tinyint, @MarriedWithholdAsSingle tinyint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .UPR00300 (NOTEINDX, EMPLOYID, EXMFRFED, FDFLGSTS, FEDEXMPT, ADFDWHDG, ESTFEDWH, STATECD, LOCALTAX, W2BF942E, W2BFDCSD, W2BFDCMP, W2BFLREP, W2BFPPLN, W2BFSTEM, MCRQGEMP, EICFLGST, NYTXDiff, QualifiedHire, MarriedWithholdAsSingle) VALUES ( @NOTEINDX, @EMPLOYID, @EXMFRFED, @FDFLGSTS, @FEDEXMPT, @ADFDWHDG, @ESTFEDWH, @STATECD, @LOCALTAX, @W2BF942E, @W2BFDCSD, @W2BFDCMP, @W2BFLREP, @W2BFPPLN, @W2BFSTEM, @MCRQGEMP, @EICFLGST, @NYTXDiff, @QualifiedHire, @MarriedWithholdAsSingle) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00300SI] TO [DYNGRP]
GO