SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_AAG3000ESI] (@aaGLWorkHdrID int, @aaGLWorkDistID int, @aaGLWorkAssignID int, @aaDisplayDistID int, @AADOCVAL tinyint, @aaErrorNum smallint, @aaTrxDim char(31), @aaAcctClassID int, @aaTrxDimCode char(31), @aaRelatedTrxDim char(15), @aaRelatedTrxDimCode char(31), @ERRDESCR char(131), @aaAccountClass char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .AAG3000E (aaGLWorkHdrID, aaGLWorkDistID, aaGLWorkAssignID, aaDisplayDistID, AADOCVAL, aaErrorNum, aaTrxDim, aaAcctClassID, aaTrxDimCode, aaRelatedTrxDim, aaRelatedTrxDimCode, ERRDESCR, aaAccountClass) VALUES ( @aaGLWorkHdrID, @aaGLWorkDistID, @aaGLWorkAssignID, @aaDisplayDistID, @AADOCVAL, @aaErrorNum, @aaTrxDim, @aaAcctClassID, @aaTrxDimCode, @aaRelatedTrxDim, @aaRelatedTrxDimCode, @ERRDESCR, @aaAccountClass) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AAG3000ESI] TO [DYNGRP]
GO
