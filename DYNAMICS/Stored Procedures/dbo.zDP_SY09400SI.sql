SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY09400SI] (@DICTID smallint, @PRODNAME char(31), @SECRESTYPE smallint, @TYPESTR char(51), @SECURITYID int, @RESTECHNAME char(81), @DSPLNAME char(81), @SERIES smallint, @Series_Name char(31), @AvailLmtdUsrs tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY09400 (DICTID, PRODNAME, SECRESTYPE, TYPESTR, SECURITYID, RESTECHNAME, DSPLNAME, SERIES, Series_Name, AvailLmtdUsrs) VALUES ( @DICTID, @PRODNAME, @SECRESTYPE, @TYPESTR, @SECURITYID, @RESTECHNAME, @DSPLNAME, @SERIES, @Series_Name, @AvailLmtdUsrs) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY09400SI] TO [DYNGRP]
GO
