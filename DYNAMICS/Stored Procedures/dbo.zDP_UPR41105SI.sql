SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR41105SI] (@CCode char(7), @CCodeDesc char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR41105 (CCode, CCodeDesc) VALUES ( @CCode, @CCodeDesc) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41105SI] TO [DYNGRP]
GO