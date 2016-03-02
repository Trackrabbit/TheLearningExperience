SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG10407SS_1] (@USERID char(15), @TRXBTCHSRC char(51), @aaIsErrorList tinyint) AS  set nocount on SELECT TOP 1  USERID, TRXBTCHSRC, DestinationStructure_1, DestinationStructure_2, DestinationStructure_3, DestinationStructure_4, DestinationStructure_5, DestinationStructure_6, DestinationStructure_7, DestinationStructure_8, DestinationStructure_9, DestinationStructure_10, DestinationStructure_11, SERIES, aaReportName, EDITLSTSTR, TRNLTRXSRC, PRNTASK, aaIsErrorList, DEX_ROW_ID FROM .AAG10407 WHERE USERID = @USERID AND TRXBTCHSRC = @TRXBTCHSRC AND aaIsErrorList = @aaIsErrorList ORDER BY USERID ASC, TRXBTCHSRC ASC, aaIsErrorList ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG10407SS_1] TO [DYNGRP]
GO
