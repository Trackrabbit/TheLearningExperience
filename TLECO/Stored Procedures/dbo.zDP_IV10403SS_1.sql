SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10403SS_1] (@PRCSHID char(15), @EPITMTYP char(1), @ITEMNMBR char(31), @UOFM char(9), @QTYFROM numeric(19,5), @QTYTO numeric(19,5)) AS  set nocount on SELECT TOP 1  PRCSHID, EPITMTYP, ITEMNMBR, UOFM, FREEITEM, FREEUOFM, MAXQTYFR, QTYFROM, QTYTO, DEX_ROW_ID FROM .IV10403 WHERE PRCSHID = @PRCSHID AND EPITMTYP = @EPITMTYP AND ITEMNMBR = @ITEMNMBR AND UOFM = @UOFM AND QTYFROM = @QTYFROM AND QTYTO = @QTYTO ORDER BY PRCSHID ASC, EPITMTYP ASC, ITEMNMBR ASC, UOFM ASC, QTYFROM ASC, QTYTO ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10403SS_1] TO [DYNGRP]
GO