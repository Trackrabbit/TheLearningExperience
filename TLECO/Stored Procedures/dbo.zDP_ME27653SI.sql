SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27653SI] (@BACHNUMB char(15), @KEYNUMBR smallint, @ME_Logo_ID_Array_1 char(15), @ME_Logo_ID_Array_2 char(15), @ME_Logo_ID_Array_3 char(15), @CHKFORM smallint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME27653 (BACHNUMB, KEYNUMBR, ME_Logo_ID_Array_1, ME_Logo_ID_Array_2, ME_Logo_ID_Array_3, CHKFORM) VALUES ( @BACHNUMB, @KEYNUMBR, @ME_Logo_ID_Array_1, @ME_Logo_ID_Array_2, @ME_Logo_ID_Array_3, @CHKFORM) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27653SI] TO [DYNGRP]
GO
