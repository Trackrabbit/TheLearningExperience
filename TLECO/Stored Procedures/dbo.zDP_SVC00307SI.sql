SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00307SI] (@EQUIPID int, @LNITMSEQ int, @TECHID char(11), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00307 (EQUIPID, LNITMSEQ, TECHID) VALUES ( @EQUIPID, @LNITMSEQ, @TECHID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00307SI] TO [DYNGRP]
GO