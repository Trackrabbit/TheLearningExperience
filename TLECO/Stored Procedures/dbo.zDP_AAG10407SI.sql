SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG10407SI] (@USERID char(15), @TRXBTCHSRC char(51), @DestinationStructure_1 tinyint, @DestinationStructure_2 tinyint, @DestinationStructure_3 tinyint, @DestinationStructure_4 tinyint, @DestinationStructure_5 char(31), @DestinationStructure_6 char(255), @DestinationStructure_7 smallint, @DestinationStructure_8 tinyint, @DestinationStructure_9 char(21), @DestinationStructure_10 smallint, @DestinationStructure_11 smallint, @SERIES smallint, @aaReportName char(51), @EDITLSTSTR char(51), @TRNLTRXSRC char(51), @PRNTASK char(15), @aaIsErrorList tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG10407 (USERID, TRXBTCHSRC, DestinationStructure_1, DestinationStructure_2, DestinationStructure_3, DestinationStructure_4, DestinationStructure_5, DestinationStructure_6, DestinationStructure_7, DestinationStructure_8, DestinationStructure_9, DestinationStructure_10, DestinationStructure_11, SERIES, aaReportName, EDITLSTSTR, TRNLTRXSRC, PRNTASK, aaIsErrorList) VALUES ( @USERID, @TRXBTCHSRC, @DestinationStructure_1, @DestinationStructure_2, @DestinationStructure_3, @DestinationStructure_4, @DestinationStructure_5, @DestinationStructure_6, @DestinationStructure_7, @DestinationStructure_8, @DestinationStructure_9, @DestinationStructure_10, @DestinationStructure_11, @SERIES, @aaReportName, @EDITLSTSTR, @TRNLTRXSRC, @PRNTASK, @aaIsErrorList) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG10407SI] TO [DYNGRP]
GO
