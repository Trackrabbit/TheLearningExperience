SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC35620SI] (@RTV_Number char(15), @RTV_Line numeric(19,5), @LNSEQNBR numeric(19,5), @SVCFRMSTAT char(3), @SVCTOSTAT char(3), @DSCRPTION char(101), @USERID char(15), @CREATDDT datetime, @CREATETIME datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC35620 (RTV_Number, RTV_Line, LNSEQNBR, SVCFRMSTAT, SVCTOSTAT, DSCRPTION, USERID, CREATDDT, CREATETIME) VALUES ( @RTV_Number, @RTV_Line, @LNSEQNBR, @SVCFRMSTAT, @SVCTOSTAT, @DSCRPTION, @USERID, @CREATDDT, @CREATETIME) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC35620SI] TO [DYNGRP]
GO
