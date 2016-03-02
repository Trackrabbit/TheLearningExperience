SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY70501SI] (@ORIGINGB smallint, @STRTYEAR smallint, @ENDYEAR smallint, @STICID char(5), @ENDICID char(5), @FINRPTNM char(31), @SJRNTPRT tinyint, @PRNTNOTS tinyint, @PRNTTYPE smallint, @ASKECHTM tinyint, @PRNTOFIL tinyint, @PRTOPRTR tinyint, @PRTOSCRN tinyint, @INCLGNDS tinyint, @IFFILXST smallint, @FILEXPNM char(255), @EXPTTYPE smallint, @RPTGRIND smallint, @RTPACHIN smallint, @RTGRSBIN numeric(19,5), @SORTBY smallint, @STTLOCID char(15), @STTLOCNM char(31), @STADDCTT char(61), @SSRCEDOC char(11), @SSDOCDSC char(31), @STTSTATE char(29), @STRTZPCD char(11), @STTFLSRS smallint, @STARTSRS smallint, @STTRXSRC char(25), @STTNOTNM char(45), @SRPTGRNM char(21), @STTPALNM char(31), @STTUSRID char(15), @STENDTYP smallint, @STTCRDNM char(15), @STTPYTID char(21), @STTSHMTH char(15), @SRTCOMSR smallint, @SRTCOMID char(15), @ENDLOCID char(15), @ENDLOCNM char(31), @ENDADDCT char(61), @ENDSRCDC char(11), @ENDSDDSC char(31), @ENDSTATE char(29), @ENDZIPCD char(11), @ENDFLSRS smallint, @ENDSERIS smallint, @ENDTRXSR char(25), @ENDNOTNM char(45), @ENDRPGNM char(21), @ENDPALNM char(31), @ENDUSRID char(15), @ENDENDTY smallint, @ENDCRDNM char(15), @ENDPYTID char(21), @ENDSHMTH char(15), @ENDCOMID char(15), @ENDCOMSR smallint, @ENDNAME char(65), @ENDID char(15), @STARTID char(15), @STRTNAME char(65), @STRTCITY char(35), @ENDCITY char(35), @ENDCNTRY char(61), @STTCNTRY char(61), @LBLFRMAT smallint, @NUMOCPIS smallint, @NUMACROS smallint, @INCADADR tinyint, @INCCNTCT tinyint, @FRCEUPCS tinyint, @YEAR1 smallint, @PRNTDTLD tinyint, @ENTXDDSC char(31), @ETXDTLID char(15), @ETXSCHDS char(31), @ETXSCHID char(15), @STTXDDSC char(31), @STTXDTID char(15), @STXSCDSC char(31), @STXSCHID char(15), @ENDPEROD smallint, @STPERIOD smallint, @STDTLTYP smallint, @ENDETTYP smallint, @STXIDNUM char(15), @ETXIDNBR char(15), @HISTTYPE smallint, @STBCHNUM char(15), @STRTDATE datetime, @STDOCNUM char(21), @ENDBNMBR char(15), @ENDOCNUM char(21), @ENDDATE datetime, @PRNSHPTO tinyint, @PRTBLLTO tinyint, @ARVLDEPART smallint, @STCUSTID char(15), @ENCUSTID char(15), @STSOPTYP smallint, @EDSOPTYP smallint, @UPSIDNBR char(15), @STTDOCDT datetime, @ENDDOCDT datetime, @STDOCTYP smallint, @ENDOCTYP smallint, @STVNDRID char(15), @ENDVNDID char(15), @STRMTKDT smallint, @ENRMTKDT smallint, @STTXUSR1 char(21), @ENTXUSR1 char(21), @STTOKNDT smallint, @ENDTKNDT smallint, @STTXPYDT datetime, @ENTXPYDT datetime, @STTPSTDT datetime, @ENDPSTDT datetime, @STGENINT1 smallint, @STDECLID char(15), @ENDDECLID char(15), @STINTRSTTRTRNID char(21), @ENDINTRSTTRTRNID char(21), @STTCC char(31), @ENDTCC char(31), @STTXRGNNUM char(25), @ENDTXRGNNUM char(25), @STRTAMNT numeric(19,5), @ENDAMNT numeric(19,5), @GROUPBOX smallint, @GROUPBX2 smallint, @EXCLVOID tinyint, @PRNTCSV tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY70501 (ORIGINGB, STRTYEAR, ENDYEAR, STICID, ENDICID, FINRPTNM, SJRNTPRT, PRNTNOTS, PRNTTYPE, ASKECHTM, PRNTOFIL, PRTOPRTR, PRTOSCRN, INCLGNDS, IFFILXST, FILEXPNM, EXPTTYPE, RPTGRIND, RTPACHIN, RTGRSBIN, SORTBY, STTLOCID, STTLOCNM, STADDCTT, SSRCEDOC, SSDOCDSC, STTSTATE, STRTZPCD, STTFLSRS, STARTSRS, STTRXSRC, STTNOTNM, SRPTGRNM, STTPALNM, STTUSRID, STENDTYP, STTCRDNM, STTPYTID, STTSHMTH, SRTCOMSR, SRTCOMID, ENDLOCID, ENDLOCNM, ENDADDCT, ENDSRCDC, ENDSDDSC, ENDSTATE, ENDZIPCD, ENDFLSRS, ENDSERIS, ENDTRXSR, ENDNOTNM, ENDRPGNM, ENDPALNM, ENDUSRID, ENDENDTY, ENDCRDNM, ENDPYTID, ENDSHMTH, ENDCOMID, ENDCOMSR, ENDNAME, ENDID, STARTID, STRTNAME, STRTCITY, ENDCITY, ENDCNTRY, STTCNTRY, LBLFRMAT, NUMOCPIS, NUMACROS, INCADADR, INCCNTCT, FRCEUPCS, YEAR1, PRNTDTLD, ENTXDDSC, ETXDTLID, ETXSCHDS, ETXSCHID, STTXDDSC, STTXDTID, STXSCDSC, STXSCHID, ENDPEROD, STPERIOD, STDTLTYP, ENDETTYP, STXIDNUM, ETXIDNBR, HISTTYPE, STBCHNUM, STRTDATE, STDOCNUM, ENDBNMBR, ENDOCNUM, ENDDATE, PRNSHPTO, PRTBLLTO, ARVLDEPART, STCUSTID, ENCUSTID, STSOPTYP, EDSOPTYP, UPSIDNBR, STTDOCDT, ENDDOCDT, STDOCTYP, ENDOCTYP, STVNDRID, ENDVNDID, STRMTKDT, ENRMTKDT, STTXUSR1, ENTXUSR1, STTOKNDT, ENDTKNDT, STTXPYDT, ENTXPYDT, STTPSTDT, ENDPSTDT, STGENINT1, STDECLID, ENDDECLID, STINTRSTTRTRNID, ENDINTRSTTRTRNID, STTCC, ENDTCC, STTXRGNNUM, ENDTXRGNNUM, STRTAMNT, ENDAMNT, GROUPBOX, GROUPBX2, EXCLVOID, PRNTCSV) VALUES ( @ORIGINGB, @STRTYEAR, @ENDYEAR, @STICID, @ENDICID, @FINRPTNM, @SJRNTPRT, @PRNTNOTS, @PRNTTYPE, @ASKECHTM, @PRNTOFIL, @PRTOPRTR, @PRTOSCRN, @INCLGNDS, @IFFILXST, @FILEXPNM, @EXPTTYPE, @RPTGRIND, @RTPACHIN, @RTGRSBIN, @SORTBY, @STTLOCID, @STTLOCNM, @STADDCTT, @SSRCEDOC, @SSDOCDSC, @STTSTATE, @STRTZPCD, @STTFLSRS, @STARTSRS, @STTRXSRC, @STTNOTNM, @SRPTGRNM, @STTPALNM, @STTUSRID, @STENDTYP, @STTCRDNM, @STTPYTID, @STTSHMTH, @SRTCOMSR, @SRTCOMID, @ENDLOCID, @ENDLOCNM, @ENDADDCT, @ENDSRCDC, @ENDSDDSC, @ENDSTATE, @ENDZIPCD, @ENDFLSRS, @ENDSERIS, @ENDTRXSR, @ENDNOTNM, @ENDRPGNM, @ENDPALNM, @ENDUSRID, @ENDENDTY, @ENDCRDNM, @ENDPYTID, @ENDSHMTH, @ENDCOMID, @ENDCOMSR, @ENDNAME, @ENDID, @STARTID, @STRTNAME, @STRTCITY, @ENDCITY, @ENDCNTRY, @STTCNTRY, @LBLFRMAT, @NUMOCPIS, @NUMACROS, @INCADADR, @INCCNTCT, @FRCEUPCS, @YEAR1, @PRNTDTLD, @ENTXDDSC, @ETXDTLID, @ETXSCHDS, @ETXSCHID, @STTXDDSC, @STTXDTID, @STXSCDSC, @STXSCHID, @ENDPEROD, @STPERIOD, @STDTLTYP, @ENDETTYP, @STXIDNUM, @ETXIDNBR, @HISTTYPE, @STBCHNUM, @STRTDATE, @STDOCNUM, @ENDBNMBR, @ENDOCNUM, @ENDDATE, @PRNSHPTO, @PRTBLLTO, @ARVLDEPART, @STCUSTID, @ENCUSTID, @STSOPTYP, @EDSOPTYP, @UPSIDNBR, @STTDOCDT, @ENDDOCDT, @STDOCTYP, @ENDOCTYP, @STVNDRID, @ENDVNDID, @STRMTKDT, @ENRMTKDT, @STTXUSR1, @ENTXUSR1, @STTOKNDT, @ENDTKNDT, @STTXPYDT, @ENTXPYDT, @STTPSTDT, @ENDPSTDT, @STGENINT1, @STDECLID, @ENDDECLID, @STINTRSTTRTRNID, @ENDINTRSTTRTRNID, @STTCC, @ENDTCC, @STTXRGNNUM, @ENDTXRGNNUM, @STRTAMNT, @ENDAMNT, @GROUPBOX, @GROUPBX2, @EXCLVOID, @PRNTCSV) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY70501SI] TO [DYNGRP]
GO