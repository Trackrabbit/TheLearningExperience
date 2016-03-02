SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273511SI] (@MSO_ProgID_Prefix char(21), @MSO_ProcessorID int, @MSO_ProcessorValue smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273511 (MSO_ProgID_Prefix, MSO_ProcessorID, MSO_ProcessorValue) VALUES ( @MSO_ProgID_Prefix, @MSO_ProcessorID, @MSO_ProcessorValue) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273511SI] TO [DYNGRP]
GO
