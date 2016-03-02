SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_aagErrorSI] (@ACTDESCR char(51), @aaGLWorkHdrID int, @JRNENTRY int, @aaErrorNum smallint, @aaTrxDim char(31), @aaGLWorkDistID int, @ACTINDX int, @aaTrxDimDescr char(51), @aaAccountClass char(15), @aaTrxDimCode char(31), @aaAcctClassID int, @USERID char(15), @aaGLWorkAssignID int, @ACTNUMBR_1 char(9), @ACTNUMBR_2 char(9), @ACTNUMBR_3 char(9), @ACTNUMBR_4 char(9), @ACTNUMBR_5 char(9), @aaRelatedTrxDim char(15), @aaRelatedTrxDimCode char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .aagError (ACTDESCR, aaGLWorkHdrID, JRNENTRY, aaErrorNum, aaTrxDim, aaGLWorkDistID, ACTINDX, aaTrxDimDescr, aaAccountClass, aaTrxDimCode, aaAcctClassID, USERID, aaGLWorkAssignID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, aaRelatedTrxDim, aaRelatedTrxDimCode) VALUES ( @ACTDESCR, @aaGLWorkHdrID, @JRNENTRY, @aaErrorNum, @aaTrxDim, @aaGLWorkDistID, @ACTINDX, @aaTrxDimDescr, @aaAccountClass, @aaTrxDimCode, @aaAcctClassID, @USERID, @aaGLWorkAssignID, @ACTNUMBR_1, @ACTNUMBR_2, @ACTNUMBR_3, @ACTNUMBR_4, @ACTNUMBR_5, @aaRelatedTrxDim, @aaRelatedTrxDimCode) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_aagErrorSI] TO [DYNGRP]
GO
