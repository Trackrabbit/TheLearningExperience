SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10402F_1] (@PRCSHID_RS char(15), @EPITMTYP_RS char(1), @ITEMNMBR_RS char(31), @UOFM_RS char(9), @QTYFROM_RS numeric(19,5), @QTYTO_RS numeric(19,5), @PRCSHID_RE char(15), @EPITMTYP_RE char(1), @ITEMNMBR_RE char(31), @UOFM_RE char(9), @QTYFROM_RE numeric(19,5), @QTYTO_RE numeric(19,5)) AS  set nocount on IF @PRCSHID_RS IS NULL BEGIN SELECT TOP 25  PRCSHID, EPITMTYP, ITEMNMBR, UOFM, QTYFROM, QTYTO, PSITMVAL, EQUOMQTY, QTYBSUOM, SEQNUMBR, DEX_ROW_ID FROM .IV10402 ORDER BY PRCSHID ASC, EPITMTYP ASC, ITEMNMBR ASC, UOFM ASC, QTYFROM ASC, QTYTO ASC END ELSE IF @PRCSHID_RS = @PRCSHID_RE BEGIN SELECT TOP 25  PRCSHID, EPITMTYP, ITEMNMBR, UOFM, QTYFROM, QTYTO, PSITMVAL, EQUOMQTY, QTYBSUOM, SEQNUMBR, DEX_ROW_ID FROM .IV10402 WHERE PRCSHID = @PRCSHID_RS AND EPITMTYP BETWEEN @EPITMTYP_RS AND @EPITMTYP_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND QTYFROM BETWEEN @QTYFROM_RS AND @QTYFROM_RE AND QTYTO BETWEEN @QTYTO_RS AND @QTYTO_RE ORDER BY PRCSHID ASC, EPITMTYP ASC, ITEMNMBR ASC, UOFM ASC, QTYFROM ASC, QTYTO ASC END ELSE BEGIN SELECT TOP 25  PRCSHID, EPITMTYP, ITEMNMBR, UOFM, QTYFROM, QTYTO, PSITMVAL, EQUOMQTY, QTYBSUOM, SEQNUMBR, DEX_ROW_ID FROM .IV10402 WHERE PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND EPITMTYP BETWEEN @EPITMTYP_RS AND @EPITMTYP_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND QTYFROM BETWEEN @QTYFROM_RS AND @QTYFROM_RE AND QTYTO BETWEEN @QTYTO_RS AND @QTYTO_RE ORDER BY PRCSHID ASC, EPITMTYP ASC, ITEMNMBR ASC, UOFM ASC, QTYFROM ASC, QTYTO ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10402F_1] TO [DYNGRP]
GO
