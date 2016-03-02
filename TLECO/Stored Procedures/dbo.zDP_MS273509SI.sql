SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273509SI] (@MSO_ProgID_Prefix char(21), @MSO_CardType char(1), @MSO_CardName char(31), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273509 (MSO_ProgID_Prefix, MSO_CardType, MSO_CardName) VALUES ( @MSO_ProgID_Prefix, @MSO_CardType, @MSO_CardName) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273509SI] TO [DYNGRP]
GO
