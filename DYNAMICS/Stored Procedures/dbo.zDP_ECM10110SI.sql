SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ECM10110SI] (@CompanyID int, @ReqID char(23), @SequenceID int, @Authorized int, @ERRCODE smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ECM10110 (CompanyID, ReqID, SequenceID, Authorized, ERRCODE) VALUES ( @CompanyID, @ReqID, @SequenceID, @Authorized, @ERRCODE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ECM10110SI] TO [DYNGRP]
GO
