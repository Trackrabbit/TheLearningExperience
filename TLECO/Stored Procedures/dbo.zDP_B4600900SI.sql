SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600900SI] (@BSSI_ParentCompanyID char(31), @BSSI_Description char(51), @COMMENT_1 char(51), @COMMENT_2 char(51), @COMMENT_3 char(51), @COMMENT_4 char(51), @NOTEINDX numeric(19,5), @CRUSRID char(15), @CREATDDT datetime, @LSTUSRED char(15), @LSTEDTDT datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4600900 (BSSI_ParentCompanyID, BSSI_Description, COMMENT_1, COMMENT_2, COMMENT_3, COMMENT_4, NOTEINDX, CRUSRID, CREATDDT, LSTUSRED, LSTEDTDT) VALUES ( @BSSI_ParentCompanyID, @BSSI_Description, @COMMENT_1, @COMMENT_2, @COMMENT_3, @COMMENT_4, @NOTEINDX, @CRUSRID, @CREATDDT, @LSTUSRED, @LSTEDTDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600900SI] TO [DYNGRP]
GO
