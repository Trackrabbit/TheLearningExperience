SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX00102N_4] (@BS int, @TAXSCHID char(15), @TXDTLBSE smallint, @TDTAXTAX tinyint, @TAXDTLID char(15), @TAXSCHID_RS char(15), @TXDTLBSE_RS smallint, @TDTAXTAX_RS tinyint, @TAXDTLID_RS char(15), @TAXSCHID_RE char(15), @TXDTLBSE_RE smallint, @TDTAXTAX_RE tinyint, @TAXDTLID_RE char(15)) AS  set nocount on IF @TAXSCHID_RS IS NULL BEGIN SELECT TOP 25  TAXSCHID, TAXDTLID, TXDTLBSE, TDTAXTAX, Auto_Calculate, DEX_ROW_ID FROM .TX00102 WHERE ( TAXSCHID = @TAXSCHID AND TXDTLBSE = @TXDTLBSE AND TDTAXTAX = @TDTAXTAX AND TAXDTLID > @TAXDTLID OR TAXSCHID = @TAXSCHID AND TXDTLBSE = @TXDTLBSE AND TDTAXTAX > @TDTAXTAX OR TAXSCHID = @TAXSCHID AND TXDTLBSE > @TXDTLBSE OR TAXSCHID > @TAXSCHID ) ORDER BY TAXSCHID ASC, TXDTLBSE ASC, TDTAXTAX ASC, TAXDTLID ASC END ELSE IF @TAXSCHID_RS = @TAXSCHID_RE BEGIN SELECT TOP 25  TAXSCHID, TAXDTLID, TXDTLBSE, TDTAXTAX, Auto_Calculate, DEX_ROW_ID FROM .TX00102 WHERE TAXSCHID = @TAXSCHID_RS AND TXDTLBSE BETWEEN @TXDTLBSE_RS AND @TXDTLBSE_RE AND TDTAXTAX BETWEEN @TDTAXTAX_RS AND @TDTAXTAX_RE AND TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE AND ( TAXSCHID = @TAXSCHID AND TXDTLBSE = @TXDTLBSE AND TDTAXTAX = @TDTAXTAX AND TAXDTLID > @TAXDTLID OR TAXSCHID = @TAXSCHID AND TXDTLBSE = @TXDTLBSE AND TDTAXTAX > @TDTAXTAX OR TAXSCHID = @TAXSCHID AND TXDTLBSE > @TXDTLBSE OR TAXSCHID > @TAXSCHID ) ORDER BY TAXSCHID ASC, TXDTLBSE ASC, TDTAXTAX ASC, TAXDTLID ASC END ELSE BEGIN SELECT TOP 25  TAXSCHID, TAXDTLID, TXDTLBSE, TDTAXTAX, Auto_Calculate, DEX_ROW_ID FROM .TX00102 WHERE TAXSCHID BETWEEN @TAXSCHID_RS AND @TAXSCHID_RE AND TXDTLBSE BETWEEN @TXDTLBSE_RS AND @TXDTLBSE_RE AND TDTAXTAX BETWEEN @TDTAXTAX_RS AND @TDTAXTAX_RE AND TAXDTLID BETWEEN @TAXDTLID_RS AND @TAXDTLID_RE AND ( TAXSCHID = @TAXSCHID AND TXDTLBSE = @TXDTLBSE AND TDTAXTAX = @TDTAXTAX AND TAXDTLID > @TAXDTLID OR TAXSCHID = @TAXSCHID AND TXDTLBSE = @TXDTLBSE AND TDTAXTAX > @TDTAXTAX OR TAXSCHID = @TAXSCHID AND TXDTLBSE > @TXDTLBSE OR TAXSCHID > @TAXSCHID ) ORDER BY TAXSCHID ASC, TXDTLBSE ASC, TDTAXTAX ASC, TAXDTLID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX00102N_4] TO [DYNGRP]
GO