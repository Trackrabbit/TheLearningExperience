SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_WHPT001SI] (@WH_PT_Option_ID char(31), @WH_Server_ID char(255), @WH_Database char(81), @WH_Cube char(51), @WH_Type smallint, @SEQNUMBR int, @WH_Property char(51), @WH_Portal tinyint, @fileName char(255), @DSCRIPTN char(31), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .WHPT001 (WH_PT_Option_ID, WH_Server_ID, WH_Database, WH_Cube, WH_Type, SEQNUMBR, WH_Property, WH_Portal, fileName, DSCRIPTN) VALUES ( @WH_PT_Option_ID, @WH_Server_ID, @WH_Database, @WH_Cube, @WH_Type, @SEQNUMBR, @WH_Property, @WH_Portal, @fileName, @DSCRIPTN) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_WHPT001SI] TO [DYNGRP]
GO
