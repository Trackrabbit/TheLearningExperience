SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP400001SI] (@BACHNUMB char(15), @BCHSOURC char(15), @SERIES smallint, @PP_Module smallint, @PP_Record_Type smallint, @PP_Document_Number char(21), @PP_Sequencer int, @PPOFFSEQ int, @TRXAMNT numeric(19,5), @PP_Saved_Status tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PP400001 (BACHNUMB, BCHSOURC, SERIES, PP_Module, PP_Record_Type, PP_Document_Number, PP_Sequencer, PPOFFSEQ, TRXAMNT, PP_Saved_Status) VALUES ( @BACHNUMB, @BCHSOURC, @SERIES, @PP_Module, @PP_Record_Type, @PP_Document_Number, @PP_Sequencer, @PPOFFSEQ, @TRXAMNT, @PP_Saved_Status) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP400001SI] TO [DYNGRP]
GO
