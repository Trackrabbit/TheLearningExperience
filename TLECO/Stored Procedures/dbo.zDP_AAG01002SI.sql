SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG01002SI] (@aaTrxDimID int, @aaTrxDimCodeID int, @aaUDFID int, @aaUDFText char(101), @aaUDFDate datetime, @aaUDFNumeric numeric(19,5), @aaUDFBoolean tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG01002 (aaTrxDimID, aaTrxDimCodeID, aaUDFID, aaUDFText, aaUDFDate, aaUDFNumeric, aaUDFBoolean) VALUES ( @aaTrxDimID, @aaTrxDimCodeID, @aaUDFID, @aaUDFText, @aaUDFDate, @aaUDFNumeric, @aaUDFBoolean) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG01002SI] TO [DYNGRP]
GO
