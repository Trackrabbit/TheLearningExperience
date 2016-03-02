SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SE465546SS_1] (@SEOPTNME char(21), @SE_Column_Number smallint, @SE_Token_Position smallint) AS  set nocount on SELECT TOP 1  SEOPTNME, SE_Column_Number, SE_Token_Position, SE_Token, DEX_ROW_ID FROM .SE465546 WHERE SEOPTNME = @SEOPTNME AND SE_Column_Number = @SE_Column_Number AND SE_Token_Position = @SE_Token_Position ORDER BY SEOPTNME ASC, SE_Column_Number ASC, SE_Token_Position ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SE465546SS_1] TO [DYNGRP]
GO
