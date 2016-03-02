SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP60200SI] (@INSTRUCTIONID char(15), @CUSTNMBR char(15), @ADRSCODE char(15), @ITEMNMBR char(31), @SEQNUMBR int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SOP60200 (INSTRUCTIONID, CUSTNMBR, ADRSCODE, ITEMNMBR, SEQNUMBR) VALUES ( @INSTRUCTIONID, @CUSTNMBR, @ADRSCODE, @ITEMNMBR, @SEQNUMBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP60200SI] TO [DYNGRP]
GO