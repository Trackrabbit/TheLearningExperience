SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04800SI] (@CMPANYID smallint, @INETPRMPTS_1 char(15), @INETPRMPTS_2 char(15), @INETPRMPTS_3 char(15), @INETPRMPTS_4 char(15), @INETPRMPTS_5 char(15), @INETPRMPTS_6 char(15), @INETPRMPTS_7 char(15), @INETPRMPTS_8 char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY04800 (CMPANYID, INETPRMPTS_1, INETPRMPTS_2, INETPRMPTS_3, INETPRMPTS_4, INETPRMPTS_5, INETPRMPTS_6, INETPRMPTS_7, INETPRMPTS_8) VALUES ( @CMPANYID, @INETPRMPTS_1, @INETPRMPTS_2, @INETPRMPTS_3, @INETPRMPTS_4, @INETPRMPTS_5, @INETPRMPTS_6, @INETPRMPTS_7, @INETPRMPTS_8) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04800SI] TO [DYNGRP]
GO
