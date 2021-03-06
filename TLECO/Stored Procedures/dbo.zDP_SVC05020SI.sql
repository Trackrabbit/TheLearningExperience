SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05020SI] (@RETDOCID char(15), @LNSEQNBR numeric(19,5), @LNITMSEQ int, @SVCFRMSTAT char(3), @SVCTOSTAT char(3), @DSCRPTION char(101), @USERID char(15), @CREATDDT datetime, @CREATETIME datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC05020 (RETDOCID, LNSEQNBR, LNITMSEQ, SVCFRMSTAT, SVCTOSTAT, DSCRPTION, USERID, CREATDDT, CREATETIME) VALUES ( @RETDOCID, @LNSEQNBR, @LNITMSEQ, @SVCFRMSTAT, @SVCTOSTAT, @DSCRPTION, @USERID, @CREATDDT, @CREATETIME) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05020SI] TO [DYNGRP]
GO
