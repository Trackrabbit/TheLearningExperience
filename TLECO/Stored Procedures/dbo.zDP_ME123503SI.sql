SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123503SI] (@MEUPLDID char(21), @MEUPDT datetime, @MEUPTIM datetime, @MKLSSTDD datetime, @MELDTDT datetime, @MENUMUPLDS smallint, @PP_Number char(21), @ME_Number_of_Checks smallint, @ME_Number_of_Voids smallint, @ME_Checks_Amount numeric(19,5), @ME_Voids_Amount numeric(19,5), @ME_Confirmation_Number char(21), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ME123503 (MEUPLDID, MEUPDT, MEUPTIM, MKLSSTDD, MELDTDT, MENUMUPLDS, PP_Number, ME_Number_of_Checks, ME_Number_of_Voids, ME_Checks_Amount, ME_Voids_Amount, ME_Confirmation_Number) VALUES ( @MEUPLDID, @MEUPDT, @MEUPTIM, @MKLSSTDD, @MELDTDT, @MENUMUPLDS, @PP_Number, @ME_Number_of_Checks, @ME_Number_of_Voids, @ME_Checks_Amount, @ME_Voids_Amount, @ME_Confirmation_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123503SI] TO [DYNGRP]
GO
