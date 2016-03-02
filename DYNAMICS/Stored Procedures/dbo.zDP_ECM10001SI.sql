SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ECM10001SI] (@CompanyID int, @ReqID char(23), @SequenceID int, @PONumber char(33), @Item char(31), @GenericDescription char(53), @ReqVendor char(21), @RequiredBy datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ECM10001 (CompanyID, ReqID, SequenceID, PONumber, Item, GenericDescription, ReqVendor, RequiredBy) VALUES ( @CompanyID, @ReqID, @SequenceID, @PONumber, @Item, @GenericDescription, @ReqVendor, @RequiredBy) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ECM10001SI] TO [DYNGRP]
GO
