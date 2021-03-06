SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DD30100SI] (@INDXLONG int, @DDAUTOST tinyint, @INCLPYMT tinyint, @PRINTED tinyint, @BLDCHDID char(15), @BLDCHKDT datetime, @BLDCHTIM datetime, @AUCTRLCD char(13), @USERID char(15), @PAYDATE datetime, @Effective_Date datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .DD30100 (INDXLONG, DDAUTOST, INCLPYMT, PRINTED, BLDCHDID, BLDCHKDT, BLDCHTIM, AUCTRLCD, USERID, PAYDATE, Effective_Date) VALUES ( @INDXLONG, @DDAUTOST, @INCLPYMT, @PRINTED, @BLDCHDID, @BLDCHKDT, @BLDCHTIM, @AUCTRLCD, @USERID, @PAYDATE, @Effective_Date) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DD30100SI] TO [DYNGRP]
GO
