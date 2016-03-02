SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_W200002SI] (@RPTNGYR smallint, @CMPNYNAM char(65), @EMPLTYPE char(7), @WAGEFILE char(3), @DATE1 datetime, @TIME1 datetime, @EPRIDNBR char(9), @INCLUDCO tinyint, @EMPLRADD char(31), @EMPLRCTY char(25), @STATECD char(3), @ZIPCODE char(11), @PHONNAME char(21), @CMPANYID smallint, @EMPW2TOT int, @EMPWTOC numeric(19,5), @EMPFEDTX numeric(19,5), @EMPSSWGS numeric(19,5), @EMPSSTAX numeric(19,5), @EMPMEDWG numeric(19,5), @EMPMEDTX numeric(19,5), @EMPSSTIP numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .W200002 (RPTNGYR, CMPNYNAM, EMPLTYPE, WAGEFILE, DATE1, TIME1, EPRIDNBR, INCLUDCO, EMPLRADD, EMPLRCTY, STATECD, ZIPCODE, PHONNAME, CMPANYID, EMPW2TOT, EMPWTOC, EMPFEDTX, EMPSSWGS, EMPSSTAX, EMPMEDWG, EMPMEDTX, EMPSSTIP) VALUES ( @RPTNGYR, @CMPNYNAM, @EMPLTYPE, @WAGEFILE, @DATE1, @TIME1, @EPRIDNBR, @INCLUDCO, @EMPLRADD, @EMPLRCTY, @STATECD, @ZIPCODE, @PHONNAME, @CMPANYID, @EMPW2TOT, @EMPWTOC, @EMPFEDTX, @EMPSSWGS, @EMPSSTAX, @EMPMEDWG, @EMPMEDTX, @EMPSSTIP) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_W200002SI] TO [DYNGRP]
GO