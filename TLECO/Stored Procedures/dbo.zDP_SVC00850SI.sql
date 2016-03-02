SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00850SI] (@ECO_Number char(15), @DSCRIPTN char(31), @DATE1 datetime, @NOTEINDX numeric(19,5), @ITEMNMBR char(31), @From_Serial_Number char(21), @To_Serial_Number char(21), @Mandatory tinyint, @SRVTYPE char(11), @TECHID char(11), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00850 (ECO_Number, DSCRIPTN, DATE1, NOTEINDX, ITEMNMBR, From_Serial_Number, To_Serial_Number, Mandatory, SRVTYPE, TECHID) VALUES ( @ECO_Number, @DSCRIPTN, @DATE1, @NOTEINDX, @ITEMNMBR, @From_Serial_Number, @To_Serial_Number, @Mandatory, @SRVTYPE, @TECHID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00850SI] TO [DYNGRP]
GO
