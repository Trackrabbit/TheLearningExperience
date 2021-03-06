SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00325SI] (@USERID char(15), @EQUIPID int, @SERLNMBR char(21), @ITEMNMBR char(31), @REFRENCE char(31), @CUSTNMBR char(15), @ADRSCODE char(15), @TECHID char(11), @OFFID char(11), @MKDTOPST tinyint, @POSTED tinyint, @ERMSGNBR smallint, @ERMSGTXT char(255), @CONSTS smallint, @CONTNBR char(11), @RANGESET tinyint, @Status_Bar_String char(255), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00325 (USERID, EQUIPID, SERLNMBR, ITEMNMBR, REFRENCE, CUSTNMBR, ADRSCODE, TECHID, OFFID, MKDTOPST, POSTED, ERMSGNBR, ERMSGTXT, CONSTS, CONTNBR, RANGESET, Status_Bar_String) VALUES ( @USERID, @EQUIPID, @SERLNMBR, @ITEMNMBR, @REFRENCE, @CUSTNMBR, @ADRSCODE, @TECHID, @OFFID, @MKDTOPST, @POSTED, @ERMSGNBR, @ERMSGTXT, @CONSTS, @CONTNBR, @RANGESET, @Status_Bar_String) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00325SI] TO [DYNGRP]
GO
