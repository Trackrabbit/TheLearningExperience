SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699705SI] (@USERID char(15), @SOPTYPE smallint, @SOPNUMBE char(21), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4699705 (USERID, SOPTYPE, SOPNUMBE) VALUES ( @USERID, @SOPTYPE, @SOPNUMBE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699705SI] TO [DYNGRP]
GO
