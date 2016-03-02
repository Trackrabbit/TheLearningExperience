SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TE022330SS_2] (@TERMSETUPCODE_I char(31), @TERMINATIONITEM_I char(51)) AS  set nocount on SELECT TOP 1  TERMSETUPCODE_I, SEQORDER_I, TERMINATIONITEM_I, PERSONRESPONSIBLE_I, EVENTENDDATE_I, DEX_ROW_ID FROM .TE022330 WHERE TERMSETUPCODE_I = @TERMSETUPCODE_I AND TERMINATIONITEM_I = @TERMINATIONITEM_I ORDER BY TERMSETUPCODE_I ASC, TERMINATIONITEM_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TE022330SS_2] TO [DYNGRP]
GO