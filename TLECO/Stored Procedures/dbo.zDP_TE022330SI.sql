SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TE022330SI] (@TERMSETUPCODE_I char(31), @SEQORDER_I smallint, @TERMINATIONITEM_I char(51), @PERSONRESPONSIBLE_I char(61), @EVENTENDDATE_I datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .TE022330 (TERMSETUPCODE_I, SEQORDER_I, TERMINATIONITEM_I, PERSONRESPONSIBLE_I, EVENTENDDATE_I) VALUES ( @TERMSETUPCODE_I, @SEQORDER_I, @TERMINATIONITEM_I, @PERSONRESPONSIBLE_I, @EVENTENDDATE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TE022330SI] TO [DYNGRP]
GO
