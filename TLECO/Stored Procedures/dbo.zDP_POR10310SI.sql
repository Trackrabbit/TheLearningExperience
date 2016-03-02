SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POR10310SI] (@POPRCTNM char(17), @RCPTLNNM int, @INVINDX int, @IVEXTCST numeric(19,5), @IVOETCST numeric(19,5), @OFFINDX int, @IVOSEXCT numeric(19,5), @IVOSOECT numeric(19,5), @Variance_Index int, @IVVEXCST numeric(19,5), @IVVOECST numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .POR10310 (POPRCTNM, RCPTLNNM, INVINDX, IVEXTCST, IVOETCST, OFFINDX, IVOSEXCT, IVOSOECT, Variance_Index, IVVEXCST, IVVOECST) VALUES ( @POPRCTNM, @RCPTLNNM, @INVINDX, @IVEXTCST, @IVOETCST, @OFFINDX, @IVOSEXCT, @IVOSOECT, @Variance_Index, @IVVEXCST, @IVVOECST) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POR10310SI] TO [DYNGRP]
GO
