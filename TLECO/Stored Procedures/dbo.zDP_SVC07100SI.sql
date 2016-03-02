SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC07100SI] (@SVC_Issue_Number int, @SRVRECTYPE smallint, @CALLNBR char(11), @SVC_CBR_Number char(21), @SVC_Action smallint, @SVC_Template_Call_Number tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC07100 (SVC_Issue_Number, SRVRECTYPE, CALLNBR, SVC_CBR_Number, SVC_Action, SVC_Template_Call_Number) VALUES ( @SVC_Issue_Number, @SRVRECTYPE, @CALLNBR, @SVC_CBR_Number, @SVC_Action, @SVC_Template_Call_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC07100SI] TO [DYNGRP]
GO
