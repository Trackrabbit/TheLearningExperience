SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRSAX032SI] (@TABLE_I smallint, @ROW_I smallint, @DSCRIPTN char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HRSAX032 (TABLE_I, ROW_I, DSCRIPTN) VALUES ( @TABLE_I, @ROW_I, @DSCRIPTN) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRSAX032SI] TO [DYNGRP]
GO
