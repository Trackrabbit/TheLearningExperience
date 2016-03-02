SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SE465546SI] (@SEOPTNME char(21), @SE_Column_Number smallint, @SE_Token_Position smallint, @SE_Token char(11), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SE465546 (SEOPTNME, SE_Column_Number, SE_Token_Position, SE_Token) VALUES ( @SEOPTNME, @SE_Column_Number, @SE_Token_Position, @SE_Token) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SE465546SI] TO [DYNGRP]
GO
