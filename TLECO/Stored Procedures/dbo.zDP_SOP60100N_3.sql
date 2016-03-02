SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP60100N_3] (@BS int, @PONUMBER char(17), @ORD int, @RCPTPRIORITY smallint, @RQSTFFDATE datetime, @QTYONPOBASE numeric(19,5), @DEX_ROW_ID int, @PONUMBER_RS char(17), @ORD_RS int, @RCPTPRIORITY_RS smallint, @RQSTFFDATE_RS datetime, @QTYONPOBASE_RS numeric(19,5), @PONUMBER_RE char(17), @ORD_RE int, @RCPTPRIORITY_RE smallint, @RQSTFFDATE_RE datetime, @QTYONPOBASE_RE numeric(19,5)) AS  set nocount on IF @PONUMBER_RS IS NULL BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, PONUMBER, ORD, RCTINVCERRORS, RCPTCOST, RCPTPRIORITY, QTYONPO, QTYONPOBASE, QTYRECVD, QTYRECINBASE, RQSTFFDATE, QTYBSUOM, LOCNCODE, ITEMDESC, DOCDATE, UOFM, DEX_ROW_ID FROM .SOP60100 WHERE ( PONUMBER = @PONUMBER AND ORD = @ORD AND RCPTPRIORITY = @RCPTPRIORITY AND RQSTFFDATE = @RQSTFFDATE AND QTYONPOBASE = @QTYONPOBASE AND DEX_ROW_ID > @DEX_ROW_ID OR PONUMBER = @PONUMBER AND ORD = @ORD AND RCPTPRIORITY = @RCPTPRIORITY AND RQSTFFDATE = @RQSTFFDATE AND QTYONPOBASE > @QTYONPOBASE OR PONUMBER = @PONUMBER AND ORD = @ORD AND RCPTPRIORITY = @RCPTPRIORITY AND RQSTFFDATE > @RQSTFFDATE OR PONUMBER = @PONUMBER AND ORD = @ORD AND RCPTPRIORITY > @RCPTPRIORITY OR PONUMBER = @PONUMBER AND ORD > @ORD OR PONUMBER > @PONUMBER ) ORDER BY PONUMBER ASC, ORD ASC, RCPTPRIORITY ASC, RQSTFFDATE ASC, QTYONPOBASE ASC, DEX_ROW_ID ASC END ELSE IF @PONUMBER_RS = @PONUMBER_RE BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, PONUMBER, ORD, RCTINVCERRORS, RCPTCOST, RCPTPRIORITY, QTYONPO, QTYONPOBASE, QTYRECVD, QTYRECINBASE, RQSTFFDATE, QTYBSUOM, LOCNCODE, ITEMDESC, DOCDATE, UOFM, DEX_ROW_ID FROM .SOP60100 WHERE PONUMBER = @PONUMBER_RS AND ORD BETWEEN @ORD_RS AND @ORD_RE AND RCPTPRIORITY BETWEEN @RCPTPRIORITY_RS AND @RCPTPRIORITY_RE AND RQSTFFDATE BETWEEN @RQSTFFDATE_RS AND @RQSTFFDATE_RE AND QTYONPOBASE BETWEEN @QTYONPOBASE_RS AND @QTYONPOBASE_RE AND ( PONUMBER = @PONUMBER AND ORD = @ORD AND RCPTPRIORITY = @RCPTPRIORITY AND RQSTFFDATE = @RQSTFFDATE AND QTYONPOBASE = @QTYONPOBASE AND DEX_ROW_ID > @DEX_ROW_ID OR PONUMBER = @PONUMBER AND ORD = @ORD AND RCPTPRIORITY = @RCPTPRIORITY AND RQSTFFDATE = @RQSTFFDATE AND QTYONPOBASE > @QTYONPOBASE OR PONUMBER = @PONUMBER AND ORD = @ORD AND RCPTPRIORITY = @RCPTPRIORITY AND RQSTFFDATE > @RQSTFFDATE OR PONUMBER = @PONUMBER AND ORD = @ORD AND RCPTPRIORITY > @RCPTPRIORITY OR PONUMBER = @PONUMBER AND ORD > @ORD OR PONUMBER > @PONUMBER ) ORDER BY PONUMBER ASC, ORD ASC, RCPTPRIORITY ASC, RQSTFFDATE ASC, QTYONPOBASE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SOPNUMBE, SOPTYPE, LNITMSEQ, CMPNTSEQ, PONUMBER, ORD, RCTINVCERRORS, RCPTCOST, RCPTPRIORITY, QTYONPO, QTYONPOBASE, QTYRECVD, QTYRECINBASE, RQSTFFDATE, QTYBSUOM, LOCNCODE, ITEMDESC, DOCDATE, UOFM, DEX_ROW_ID FROM .SOP60100 WHERE PONUMBER BETWEEN @PONUMBER_RS AND @PONUMBER_RE AND ORD BETWEEN @ORD_RS AND @ORD_RE AND RCPTPRIORITY BETWEEN @RCPTPRIORITY_RS AND @RCPTPRIORITY_RE AND RQSTFFDATE BETWEEN @RQSTFFDATE_RS AND @RQSTFFDATE_RE AND QTYONPOBASE BETWEEN @QTYONPOBASE_RS AND @QTYONPOBASE_RE AND ( PONUMBER = @PONUMBER AND ORD = @ORD AND RCPTPRIORITY = @RCPTPRIORITY AND RQSTFFDATE = @RQSTFFDATE AND QTYONPOBASE = @QTYONPOBASE AND DEX_ROW_ID > @DEX_ROW_ID OR PONUMBER = @PONUMBER AND ORD = @ORD AND RCPTPRIORITY = @RCPTPRIORITY AND RQSTFFDATE = @RQSTFFDATE AND QTYONPOBASE > @QTYONPOBASE OR PONUMBER = @PONUMBER AND ORD = @ORD AND RCPTPRIORITY = @RCPTPRIORITY AND RQSTFFDATE > @RQSTFFDATE OR PONUMBER = @PONUMBER AND ORD = @ORD AND RCPTPRIORITY > @RCPTPRIORITY OR PONUMBER = @PONUMBER AND ORD > @ORD OR PONUMBER > @PONUMBER ) ORDER BY PONUMBER ASC, ORD ASC, RCPTPRIORITY ASC, RQSTFFDATE ASC, QTYONPOBASE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP60100N_3] TO [DYNGRP]
GO
