SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10403N_1] (@BS int, @PRCSHID char(15), @EPITMTYP char(1), @ITEMNMBR char(31), @UOFM char(9), @QTYFROM numeric(19,5), @QTYTO numeric(19,5), @PRCSHID_RS char(15), @EPITMTYP_RS char(1), @ITEMNMBR_RS char(31), @UOFM_RS char(9), @QTYFROM_RS numeric(19,5), @QTYTO_RS numeric(19,5), @PRCSHID_RE char(15), @EPITMTYP_RE char(1), @ITEMNMBR_RE char(31), @UOFM_RE char(9), @QTYFROM_RE numeric(19,5), @QTYTO_RE numeric(19,5)) AS  set nocount on IF @PRCSHID_RS IS NULL BEGIN SELECT TOP 25  PRCSHID, EPITMTYP, ITEMNMBR, UOFM, FREEITEM, FREEUOFM, MAXQTYFR, QTYFROM, QTYTO, DEX_ROW_ID FROM .IV10403 WHERE ( PRCSHID = @PRCSHID AND EPITMTYP = @EPITMTYP AND ITEMNMBR = @ITEMNMBR AND UOFM = @UOFM AND QTYFROM = @QTYFROM AND QTYTO > @QTYTO OR PRCSHID = @PRCSHID AND EPITMTYP = @EPITMTYP AND ITEMNMBR = @ITEMNMBR AND UOFM = @UOFM AND QTYFROM > @QTYFROM OR PRCSHID = @PRCSHID AND EPITMTYP = @EPITMTYP AND ITEMNMBR = @ITEMNMBR AND UOFM > @UOFM OR PRCSHID = @PRCSHID AND EPITMTYP = @EPITMTYP AND ITEMNMBR > @ITEMNMBR OR PRCSHID = @PRCSHID AND EPITMTYP > @EPITMTYP OR PRCSHID > @PRCSHID ) ORDER BY PRCSHID ASC, EPITMTYP ASC, ITEMNMBR ASC, UOFM ASC, QTYFROM ASC, QTYTO ASC END ELSE IF @PRCSHID_RS = @PRCSHID_RE BEGIN SELECT TOP 25  PRCSHID, EPITMTYP, ITEMNMBR, UOFM, FREEITEM, FREEUOFM, MAXQTYFR, QTYFROM, QTYTO, DEX_ROW_ID FROM .IV10403 WHERE PRCSHID = @PRCSHID_RS AND EPITMTYP BETWEEN @EPITMTYP_RS AND @EPITMTYP_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND QTYFROM BETWEEN @QTYFROM_RS AND @QTYFROM_RE AND QTYTO BETWEEN @QTYTO_RS AND @QTYTO_RE AND ( PRCSHID = @PRCSHID AND EPITMTYP = @EPITMTYP AND ITEMNMBR = @ITEMNMBR AND UOFM = @UOFM AND QTYFROM = @QTYFROM AND QTYTO > @QTYTO OR PRCSHID = @PRCSHID AND EPITMTYP = @EPITMTYP AND ITEMNMBR = @ITEMNMBR AND UOFM = @UOFM AND QTYFROM > @QTYFROM OR PRCSHID = @PRCSHID AND EPITMTYP = @EPITMTYP AND ITEMNMBR = @ITEMNMBR AND UOFM > @UOFM OR PRCSHID = @PRCSHID AND EPITMTYP = @EPITMTYP AND ITEMNMBR > @ITEMNMBR OR PRCSHID = @PRCSHID AND EPITMTYP > @EPITMTYP OR PRCSHID > @PRCSHID ) ORDER BY PRCSHID ASC, EPITMTYP ASC, ITEMNMBR ASC, UOFM ASC, QTYFROM ASC, QTYTO ASC END ELSE BEGIN SELECT TOP 25  PRCSHID, EPITMTYP, ITEMNMBR, UOFM, FREEITEM, FREEUOFM, MAXQTYFR, QTYFROM, QTYTO, DEX_ROW_ID FROM .IV10403 WHERE PRCSHID BETWEEN @PRCSHID_RS AND @PRCSHID_RE AND EPITMTYP BETWEEN @EPITMTYP_RS AND @EPITMTYP_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND QTYFROM BETWEEN @QTYFROM_RS AND @QTYFROM_RE AND QTYTO BETWEEN @QTYTO_RS AND @QTYTO_RE AND ( PRCSHID = @PRCSHID AND EPITMTYP = @EPITMTYP AND ITEMNMBR = @ITEMNMBR AND UOFM = @UOFM AND QTYFROM = @QTYFROM AND QTYTO > @QTYTO OR PRCSHID = @PRCSHID AND EPITMTYP = @EPITMTYP AND ITEMNMBR = @ITEMNMBR AND UOFM = @UOFM AND QTYFROM > @QTYFROM OR PRCSHID = @PRCSHID AND EPITMTYP = @EPITMTYP AND ITEMNMBR = @ITEMNMBR AND UOFM > @UOFM OR PRCSHID = @PRCSHID AND EPITMTYP = @EPITMTYP AND ITEMNMBR > @ITEMNMBR OR PRCSHID = @PRCSHID AND EPITMTYP > @EPITMTYP OR PRCSHID > @PRCSHID ) ORDER BY PRCSHID ASC, EPITMTYP ASC, ITEMNMBR ASC, UOFM ASC, QTYFROM ASC, QTYTO ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10403N_1] TO [DYNGRP]
GO