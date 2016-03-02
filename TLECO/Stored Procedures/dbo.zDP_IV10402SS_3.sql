SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10402SS_3] (@PRCSHID char(15), @EPITMTYP char(1), @ITEMNMBR char(31), @QTYBSUOM numeric(19,5), @QTYFROM numeric(19,5), @QTYTO numeric(19,5)) AS  set nocount on SELECT TOP 1  PRCSHID, EPITMTYP, ITEMNMBR, UOFM, QTYFROM, QTYTO, PSITMVAL, EQUOMQTY, QTYBSUOM, SEQNUMBR, DEX_ROW_ID FROM .IV10402 WHERE PRCSHID = @PRCSHID AND EPITMTYP = @EPITMTYP AND ITEMNMBR = @ITEMNMBR AND QTYBSUOM = @QTYBSUOM AND QTYFROM = @QTYFROM AND QTYTO = @QTYTO ORDER BY PRCSHID ASC, EPITMTYP ASC, ITEMNMBR ASC, QTYBSUOM ASC, QTYFROM ASC, QTYTO ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10402SS_3] TO [DYNGRP]
GO