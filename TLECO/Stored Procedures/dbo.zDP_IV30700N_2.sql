SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30700N_2] (@BS int, @CNTSTRTDT datetime, @STCKCNTID char(15), @SEQNUMBR int, @CNTSTRTDT_RS datetime, @STCKCNTID_RS char(15), @SEQNUMBR_RS int, @CNTSTRTDT_RE datetime, @STCKCNTID_RE char(15), @SEQNUMBR_RE int) AS  set nocount on IF @CNTSTRTDT_RS IS NULL BEGIN SELECT TOP 25  STCKCNTID, SEQNUMBR, STCKCNTDSCRPTN, CNTSTRTDT, CNTSTRTTM, IVDOCNBR, IVDOCTYP, NOTEINDX, DOCDATE, DEX_ROW_ID FROM .IV30700 WHERE ( CNTSTRTDT = @CNTSTRTDT AND STCKCNTID = @STCKCNTID AND SEQNUMBR > @SEQNUMBR OR CNTSTRTDT = @CNTSTRTDT AND STCKCNTID > @STCKCNTID OR CNTSTRTDT > @CNTSTRTDT ) ORDER BY CNTSTRTDT ASC, STCKCNTID ASC, SEQNUMBR ASC END ELSE IF @CNTSTRTDT_RS = @CNTSTRTDT_RE BEGIN SELECT TOP 25  STCKCNTID, SEQNUMBR, STCKCNTDSCRPTN, CNTSTRTDT, CNTSTRTTM, IVDOCNBR, IVDOCTYP, NOTEINDX, DOCDATE, DEX_ROW_ID FROM .IV30700 WHERE CNTSTRTDT = @CNTSTRTDT_RS AND STCKCNTID BETWEEN @STCKCNTID_RS AND @STCKCNTID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( CNTSTRTDT = @CNTSTRTDT AND STCKCNTID = @STCKCNTID AND SEQNUMBR > @SEQNUMBR OR CNTSTRTDT = @CNTSTRTDT AND STCKCNTID > @STCKCNTID OR CNTSTRTDT > @CNTSTRTDT ) ORDER BY CNTSTRTDT ASC, STCKCNTID ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  STCKCNTID, SEQNUMBR, STCKCNTDSCRPTN, CNTSTRTDT, CNTSTRTTM, IVDOCNBR, IVDOCTYP, NOTEINDX, DOCDATE, DEX_ROW_ID FROM .IV30700 WHERE CNTSTRTDT BETWEEN @CNTSTRTDT_RS AND @CNTSTRTDT_RE AND STCKCNTID BETWEEN @STCKCNTID_RS AND @STCKCNTID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( CNTSTRTDT = @CNTSTRTDT AND STCKCNTID = @STCKCNTID AND SEQNUMBR > @SEQNUMBR OR CNTSTRTDT = @CNTSTRTDT AND STCKCNTID > @STCKCNTID OR CNTSTRTDT > @CNTSTRTDT ) ORDER BY CNTSTRTDT ASC, STCKCNTID ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30700N_2] TO [DYNGRP]
GO
