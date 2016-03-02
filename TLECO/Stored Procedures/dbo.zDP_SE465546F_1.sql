SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SE465546F_1] (@SEOPTNME_RS char(21), @SE_Column_Number_RS smallint, @SE_Token_Position_RS smallint, @SEOPTNME_RE char(21), @SE_Column_Number_RE smallint, @SE_Token_Position_RE smallint) AS  set nocount on IF @SEOPTNME_RS IS NULL BEGIN SELECT TOP 25  SEOPTNME, SE_Column_Number, SE_Token_Position, SE_Token, DEX_ROW_ID FROM .SE465546 ORDER BY SEOPTNME ASC, SE_Column_Number ASC, SE_Token_Position ASC END ELSE IF @SEOPTNME_RS = @SEOPTNME_RE BEGIN SELECT TOP 25  SEOPTNME, SE_Column_Number, SE_Token_Position, SE_Token, DEX_ROW_ID FROM .SE465546 WHERE SEOPTNME = @SEOPTNME_RS AND SE_Column_Number BETWEEN @SE_Column_Number_RS AND @SE_Column_Number_RE AND SE_Token_Position BETWEEN @SE_Token_Position_RS AND @SE_Token_Position_RE ORDER BY SEOPTNME ASC, SE_Column_Number ASC, SE_Token_Position ASC END ELSE BEGIN SELECT TOP 25  SEOPTNME, SE_Column_Number, SE_Token_Position, SE_Token, DEX_ROW_ID FROM .SE465546 WHERE SEOPTNME BETWEEN @SEOPTNME_RS AND @SEOPTNME_RE AND SE_Column_Number BETWEEN @SE_Column_Number_RS AND @SE_Column_Number_RE AND SE_Token_Position BETWEEN @SE_Token_Position_RS AND @SE_Token_Position_RE ORDER BY SEOPTNME ASC, SE_Column_Number ASC, SE_Token_Position ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SE465546F_1] TO [DYNGRP]
GO
