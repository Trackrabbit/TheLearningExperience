SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40300SI] (@DEPRTMNT char(7), @DSCRIPTN char(31), @AddlDesc char(131), @NOTEINDX numeric(19,5), @CHANGEBY_I char(15), @CHANGEDATE_I datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR40300 (DEPRTMNT, DSCRIPTN, AddlDesc, NOTEINDX, CHANGEBY_I, CHANGEDATE_I) VALUES ( @DEPRTMNT, @DSCRIPTN, @AddlDesc, @NOTEINDX, @CHANGEBY_I, @CHANGEDATE_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40300SI] TO [DYNGRP]
GO