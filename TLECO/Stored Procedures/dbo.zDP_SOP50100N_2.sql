SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50100N_2] (@BS int, @PROCORIG smallint, @USERID char(15), @CUSTNMBR char(15), @CSTPONBR char(21), @DEX_ROW_ID int, @PROCORIG_RS smallint, @USERID_RS char(15), @CUSTNMBR_RS char(15), @CSTPONBR_RS char(21), @PROCORIG_RE smallint, @USERID_RE char(15), @CUSTNMBR_RE char(15), @CSTPONBR_RE char(21)) AS  set nocount on IF @PROCORIG_RS IS NULL BEGIN SELECT TOP 25  PROCORIG, USERID, MKTOPROC, SOPNUMBE, SOPTYPE, DOCDATE, CUSTNMBR, CUSTNAME, CSTPONBR, BACHNUMB, DOCID, ERROR, DEX_ROW_ID FROM .SOP50100 WHERE ( PROCORIG = @PROCORIG AND USERID = @USERID AND CUSTNMBR = @CUSTNMBR AND CSTPONBR = @CSTPONBR AND DEX_ROW_ID > @DEX_ROW_ID OR PROCORIG = @PROCORIG AND USERID = @USERID AND CUSTNMBR = @CUSTNMBR AND CSTPONBR > @CSTPONBR OR PROCORIG = @PROCORIG AND USERID = @USERID AND CUSTNMBR > @CUSTNMBR OR PROCORIG = @PROCORIG AND USERID > @USERID OR PROCORIG > @PROCORIG ) ORDER BY PROCORIG ASC, USERID ASC, CUSTNMBR ASC, CSTPONBR ASC, DEX_ROW_ID ASC END ELSE IF @PROCORIG_RS = @PROCORIG_RE BEGIN SELECT TOP 25  PROCORIG, USERID, MKTOPROC, SOPNUMBE, SOPTYPE, DOCDATE, CUSTNMBR, CUSTNAME, CSTPONBR, BACHNUMB, DOCID, ERROR, DEX_ROW_ID FROM .SOP50100 WHERE PROCORIG = @PROCORIG_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND CSTPONBR BETWEEN @CSTPONBR_RS AND @CSTPONBR_RE AND ( PROCORIG = @PROCORIG AND USERID = @USERID AND CUSTNMBR = @CUSTNMBR AND CSTPONBR = @CSTPONBR AND DEX_ROW_ID > @DEX_ROW_ID OR PROCORIG = @PROCORIG AND USERID = @USERID AND CUSTNMBR = @CUSTNMBR AND CSTPONBR > @CSTPONBR OR PROCORIG = @PROCORIG AND USERID = @USERID AND CUSTNMBR > @CUSTNMBR OR PROCORIG = @PROCORIG AND USERID > @USERID OR PROCORIG > @PROCORIG ) ORDER BY PROCORIG ASC, USERID ASC, CUSTNMBR ASC, CSTPONBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PROCORIG, USERID, MKTOPROC, SOPNUMBE, SOPTYPE, DOCDATE, CUSTNMBR, CUSTNAME, CSTPONBR, BACHNUMB, DOCID, ERROR, DEX_ROW_ID FROM .SOP50100 WHERE PROCORIG BETWEEN @PROCORIG_RS AND @PROCORIG_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND CSTPONBR BETWEEN @CSTPONBR_RS AND @CSTPONBR_RE AND ( PROCORIG = @PROCORIG AND USERID = @USERID AND CUSTNMBR = @CUSTNMBR AND CSTPONBR = @CSTPONBR AND DEX_ROW_ID > @DEX_ROW_ID OR PROCORIG = @PROCORIG AND USERID = @USERID AND CUSTNMBR = @CUSTNMBR AND CSTPONBR > @CSTPONBR OR PROCORIG = @PROCORIG AND USERID = @USERID AND CUSTNMBR > @CUSTNMBR OR PROCORIG = @PROCORIG AND USERID > @USERID OR PROCORIG > @PROCORIG ) ORDER BY PROCORIG ASC, USERID ASC, CUSTNMBR ASC, CSTPONBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50100N_2] TO [DYNGRP]
GO
