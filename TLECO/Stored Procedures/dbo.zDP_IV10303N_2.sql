SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10303N_2] (@BS int, @STCKCNTID char(15), @ITEMNMBR char(31), @LOCNCODE char(11), @BINNMBR char(21), @QTYBSUOM numeric(19,5), @UOFM char(9), @STCKCNTID_RS char(15), @ITEMNMBR_RS char(31), @LOCNCODE_RS char(11), @BINNMBR_RS char(21), @QTYBSUOM_RS numeric(19,5), @UOFM_RS char(9), @STCKCNTID_RE char(15), @ITEMNMBR_RE char(31), @LOCNCODE_RE char(11), @BINNMBR_RE char(21), @QTYBSUOM_RE numeric(19,5), @UOFM_RE char(9)) AS  set nocount on IF @STCKCNTID_RS IS NULL BEGIN SELECT TOP 25  STCKCNTID, ITEMNMBR, LOCNCODE, BINNMBR, UOFM, QTYBSUOM, COUNTEDQTY, DECPLQTY, DEX_ROW_ID FROM .IV10303 WHERE ( STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR AND QTYBSUOM = @QTYBSUOM AND UOFM > @UOFM OR STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR AND QTYBSUOM > @QTYBSUOM OR STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR > @BINNMBR OR STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR STCKCNTID = @STCKCNTID AND ITEMNMBR > @ITEMNMBR OR STCKCNTID > @STCKCNTID ) ORDER BY STCKCNTID ASC, ITEMNMBR ASC, LOCNCODE ASC, BINNMBR ASC, QTYBSUOM ASC, UOFM ASC END ELSE IF @STCKCNTID_RS = @STCKCNTID_RE BEGIN SELECT TOP 25  STCKCNTID, ITEMNMBR, LOCNCODE, BINNMBR, UOFM, QTYBSUOM, COUNTEDQTY, DECPLQTY, DEX_ROW_ID FROM .IV10303 WHERE STCKCNTID = @STCKCNTID_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BINNMBR BETWEEN @BINNMBR_RS AND @BINNMBR_RE AND QTYBSUOM BETWEEN @QTYBSUOM_RS AND @QTYBSUOM_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND ( STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR AND QTYBSUOM = @QTYBSUOM AND UOFM > @UOFM OR STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR AND QTYBSUOM > @QTYBSUOM OR STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR > @BINNMBR OR STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR STCKCNTID = @STCKCNTID AND ITEMNMBR > @ITEMNMBR OR STCKCNTID > @STCKCNTID ) ORDER BY STCKCNTID ASC, ITEMNMBR ASC, LOCNCODE ASC, BINNMBR ASC, QTYBSUOM ASC, UOFM ASC END ELSE BEGIN SELECT TOP 25  STCKCNTID, ITEMNMBR, LOCNCODE, BINNMBR, UOFM, QTYBSUOM, COUNTEDQTY, DECPLQTY, DEX_ROW_ID FROM .IV10303 WHERE STCKCNTID BETWEEN @STCKCNTID_RS AND @STCKCNTID_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BINNMBR BETWEEN @BINNMBR_RS AND @BINNMBR_RE AND QTYBSUOM BETWEEN @QTYBSUOM_RS AND @QTYBSUOM_RE AND UOFM BETWEEN @UOFM_RS AND @UOFM_RE AND ( STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR AND QTYBSUOM = @QTYBSUOM AND UOFM > @UOFM OR STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR AND QTYBSUOM > @QTYBSUOM OR STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR > @BINNMBR OR STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE > @LOCNCODE OR STCKCNTID = @STCKCNTID AND ITEMNMBR > @ITEMNMBR OR STCKCNTID > @STCKCNTID ) ORDER BY STCKCNTID ASC, ITEMNMBR ASC, LOCNCODE ASC, BINNMBR ASC, QTYBSUOM ASC, UOFM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10303N_2] TO [DYNGRP]
GO
