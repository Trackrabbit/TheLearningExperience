SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_wkPostingValidationStateSI] (@BCHSOURC char(15), @BACHNUMB char(15), @GLBCHVAL binary(4), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .wkPostingValidationState (BCHSOURC, BACHNUMB, GLBCHVAL) VALUES ( @BCHSOURC, @BACHNUMB, @GLBCHVAL) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_wkPostingValidationStateSI] TO [DYNGRP]
GO
