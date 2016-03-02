SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40600SS_1] (@USCATNUM smallint, @USCATVAL char(11)) AS  set nocount on SELECT TOP 1  USCATVAL, USCATNUM, Image_URL, UserCatLongDescr, DEX_ROW_ID FROM .IV40600 WHERE USCATNUM = @USCATNUM AND USCATVAL = @USCATVAL ORDER BY USCATNUM ASC, USCATVAL ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40600SS_1] TO [DYNGRP]
GO
