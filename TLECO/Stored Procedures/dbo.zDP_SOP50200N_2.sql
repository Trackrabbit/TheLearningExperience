SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP50200N_2] (@BS int, @USERID char(15), @SEQNUMBR int, @DOCTYPE smallint, @CUSTNMBR char(15), @LOCNCODE char(11), @DOCPRINTSEQ int, @SOPTYPE smallint, @SOPNUMBE char(21), @Email_Type smallint, @USERID_RS char(15), @SEQNUMBR_RS int, @DOCTYPE_RS smallint, @CUSTNMBR_RS char(15), @LOCNCODE_RS char(11), @DOCPRINTSEQ_RS int, @SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @Email_Type_RS smallint, @USERID_RE char(15), @SEQNUMBR_RE int, @DOCTYPE_RE smallint, @CUSTNMBR_RE char(15), @LOCNCODE_RE char(11), @DOCPRINTSEQ_RE int, @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21), @Email_Type_RE smallint) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  DOCTYPE, SOPTYPE, SOPNUMBE, LOCNCODE, CUSTNMBR, USERID, SEQNUMBR, DOCPRINTSEQ, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, SHIPMTHD, Reprint, Email_Type, PHONNAME, DEX_ROW_ID FROM .SOP50200 WHERE ( USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE = @LOCNCODE AND DOCPRINTSEQ = @DOCPRINTSEQ AND SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND Email_Type > @Email_Type OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE = @LOCNCODE AND DOCPRINTSEQ = @DOCPRINTSEQ AND SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE = @LOCNCODE AND DOCPRINTSEQ = @DOCPRINTSEQ AND SOPTYPE > @SOPTYPE OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE = @LOCNCODE AND DOCPRINTSEQ > @DOCPRINTSEQ OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE > @LOCNCODE OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR > @CUSTNMBR OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE > @DOCTYPE OR USERID = @USERID AND SEQNUMBR > @SEQNUMBR OR USERID > @USERID ) ORDER BY USERID ASC, SEQNUMBR ASC, DOCTYPE ASC, CUSTNMBR ASC, LOCNCODE ASC, DOCPRINTSEQ ASC, SOPTYPE ASC, SOPNUMBE ASC, Email_Type ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  DOCTYPE, SOPTYPE, SOPNUMBE, LOCNCODE, CUSTNMBR, USERID, SEQNUMBR, DOCPRINTSEQ, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, SHIPMTHD, Reprint, Email_Type, PHONNAME, DEX_ROW_ID FROM .SOP50200 WHERE USERID = @USERID_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND DOCPRINTSEQ BETWEEN @DOCPRINTSEQ_RS AND @DOCPRINTSEQ_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND Email_Type BETWEEN @Email_Type_RS AND @Email_Type_RE AND ( USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE = @LOCNCODE AND DOCPRINTSEQ = @DOCPRINTSEQ AND SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND Email_Type > @Email_Type OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE = @LOCNCODE AND DOCPRINTSEQ = @DOCPRINTSEQ AND SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE = @LOCNCODE AND DOCPRINTSEQ = @DOCPRINTSEQ AND SOPTYPE > @SOPTYPE OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE = @LOCNCODE AND DOCPRINTSEQ > @DOCPRINTSEQ OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE > @LOCNCODE OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR > @CUSTNMBR OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE > @DOCTYPE OR USERID = @USERID AND SEQNUMBR > @SEQNUMBR OR USERID > @USERID ) ORDER BY USERID ASC, SEQNUMBR ASC, DOCTYPE ASC, CUSTNMBR ASC, LOCNCODE ASC, DOCPRINTSEQ ASC, SOPTYPE ASC, SOPNUMBE ASC, Email_Type ASC END ELSE BEGIN SELECT TOP 25  DOCTYPE, SOPTYPE, SOPNUMBE, LOCNCODE, CUSTNMBR, USERID, SEQNUMBR, DOCPRINTSEQ, ShipToName, CNTCPRSN, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, SHIPMTHD, Reprint, Email_Type, PHONNAME, DEX_ROW_ID FROM .SOP50200 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND DOCPRINTSEQ BETWEEN @DOCPRINTSEQ_RS AND @DOCPRINTSEQ_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND Email_Type BETWEEN @Email_Type_RS AND @Email_Type_RE AND ( USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE = @LOCNCODE AND DOCPRINTSEQ = @DOCPRINTSEQ AND SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND Email_Type > @Email_Type OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE = @LOCNCODE AND DOCPRINTSEQ = @DOCPRINTSEQ AND SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE = @LOCNCODE AND DOCPRINTSEQ = @DOCPRINTSEQ AND SOPTYPE > @SOPTYPE OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE = @LOCNCODE AND DOCPRINTSEQ > @DOCPRINTSEQ OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR = @CUSTNMBR AND LOCNCODE > @LOCNCODE OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE = @DOCTYPE AND CUSTNMBR > @CUSTNMBR OR USERID = @USERID AND SEQNUMBR = @SEQNUMBR AND DOCTYPE > @DOCTYPE OR USERID = @USERID AND SEQNUMBR > @SEQNUMBR OR USERID > @USERID ) ORDER BY USERID ASC, SEQNUMBR ASC, DOCTYPE ASC, CUSTNMBR ASC, LOCNCODE ASC, DOCPRINTSEQ ASC, SOPTYPE ASC, SOPNUMBE ASC, Email_Type ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP50200N_2] TO [DYNGRP]
GO