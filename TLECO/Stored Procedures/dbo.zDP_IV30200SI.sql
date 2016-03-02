SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30200SI] (@TRXSORCE char(13), @IVDOCTYP smallint, @DOCNUMBR char(21), @DOCDATE datetime, @BCHSOURC char(15), @BACHNUMB char(15), @NOTEINDX numeric(19,5), @GLPOSTDT datetime, @SRCRFRNCNMBR char(31), @SOURCEINDICATOR smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV30200 (TRXSORCE, IVDOCTYP, DOCNUMBR, DOCDATE, BCHSOURC, BACHNUMB, NOTEINDX, GLPOSTDT, SRCRFRNCNMBR, SOURCEINDICATOR) VALUES ( @TRXSORCE, @IVDOCTYP, @DOCNUMBR, @DOCDATE, @BCHSOURC, @BACHNUMB, @NOTEINDX, @GLPOSTDT, @SRCRFRNCNMBR, @SOURCEINDICATOR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30200SI] TO [DYNGRP]
GO
