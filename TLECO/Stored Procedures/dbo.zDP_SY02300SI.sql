SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY02300SI] (@UPSTDTFR smallint, @BCHEXIST smallint, @PTGENLED tinyint, @SERIES smallint, @TRXSOURC char(25), @PSTOGLHW smallint, @ALTRXPST tinyint, @AUTPSTGL tinyint, @VERBATOT tinyint, @VERTRX tinyint, @REQBAPRV tinyint, @PASSWORD char(15), @INCMCINF tinyint, @Use_Account_Settings tinyint, @POSTINDETAIL tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY02300 (UPSTDTFR, BCHEXIST, PTGENLED, SERIES, TRXSOURC, PSTOGLHW, ALTRXPST, AUTPSTGL, VERBATOT, VERTRX, REQBAPRV, PASSWORD, INCMCINF, Use_Account_Settings, POSTINDETAIL) VALUES ( @UPSTDTFR, @BCHEXIST, @PTGENLED, @SERIES, @TRXSOURC, @PSTOGLHW, @ALTRXPST, @AUTPSTGL, @VERBATOT, @VERTRX, @REQBAPRV, @PASSWORD, @INCMCINF, @Use_Account_Settings, @POSTINDETAIL) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY02300SI] TO [DYNGRP]
GO
