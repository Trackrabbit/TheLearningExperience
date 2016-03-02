SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL00200SI] (@BUDGETID char(15), @BUDCOMNT char(31), @BUDPWRD binary(16), @YEAR1 smallint, @Based_On smallint, @From_Date datetime, @TODATE datetime, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL00200 (BUDGETID, BUDCOMNT, BUDPWRD, YEAR1, Based_On, From_Date, TODATE, NOTEINDX) VALUES ( @BUDGETID, @BUDCOMNT, @BUDPWRD, @YEAR1, @Based_On, @From_Date, @TODATE, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00200SI] TO [DYNGRP]
GO
