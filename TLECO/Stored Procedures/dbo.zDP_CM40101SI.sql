SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM40101SI] (@CMSortType smallint, @CMTrxType smallint, @DOCTYNAM char(21), @DOCABREV char(3), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CM40101 (CMSortType, CMTrxType, DOCTYNAM, DOCABREV) VALUES ( @CMSortType, @CMTrxType, @DOCTYNAM, @DOCABREV) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM40101SI] TO [DYNGRP]
GO
