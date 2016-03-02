SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_duLCKSI] (@companyID smallint, @INTERID char(5), @duWorkstationID int, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .duLCK (companyID, INTERID, duWorkstationID) VALUES ( @companyID, @INTERID, @duWorkstationID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_duLCKSI] TO [DYNGRP]
GO
