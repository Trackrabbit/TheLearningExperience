SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40105SS_1] (@TEN95LINE smallint, @TEN95LINECODE smallint) AS  set nocount on SELECT TOP 1  TEN95LINE, TEN95LINECODE, TEN95LINECODETEXT, TEN95LINEDESCRIPTION, DEX_ROW_ID FROM .UPR40105 WHERE TEN95LINE = @TEN95LINE AND TEN95LINECODE = @TEN95LINECODE ORDER BY TEN95LINE ASC, TEN95LINECODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40105SS_1] TO [DYNGRP]
GO
