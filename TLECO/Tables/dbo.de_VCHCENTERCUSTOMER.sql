CREATE TABLE [dbo].[de_VCHCENTERCUSTOMER]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTCLAS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CPRCSTNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STMTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHRTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPSZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAX] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRBTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRSTADCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STADDRCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRLMTTYP] [smallint] NOT NULL,
[CRLMTAMT] [numeric] (19, 5) NOT NULL,
[CRLMTPER] [smallint] NOT NULL,
[CRLMTPAM] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTDISC] [smallint] NOT NULL,
[PRCLEVEL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MINPYTYP] [smallint] NOT NULL,
[MINPYDLR] [numeric] (19, 5) NOT NULL,
[MINPYPCT] [smallint] NOT NULL,
[FNCHATYP] [smallint] NOT NULL,
[FNCHPCNT] [smallint] NOT NULL,
[FINCHDLR] [numeric] (19, 5) NOT NULL,
[MXWOFTYP] [smallint] NOT NULL,
[MXWROFAM] [numeric] (19, 5) NOT NULL,
[COMMENT1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXEXMT1] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXEXMT2] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXRGNNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BALNCTYP] [smallint] NOT NULL,
[STMTCYCL] [smallint] NOT NULL,
[BANKNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNKBRNCH] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFCACTY] [smallint] NOT NULL,
[RMCSHACC] [int] NOT NULL,
[RMARACC] [int] NOT NULL,
[RMSLSACC] [int] NOT NULL,
[RMIVACC] [int] NOT NULL,
[RMCOSACC] [int] NOT NULL,
[RMTAKACC] [int] NOT NULL,
[RMAVACC] [int] NOT NULL,
[RMFCGACC] [int] NOT NULL,
[RMWRACC] [int] NOT NULL,
[RMSORACC] [int] NOT NULL,
[FRSTINDT] [datetime] NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[HOLD] [tinyint] NOT NULL,
[CRCARDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRCRDNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCRDXPDT] [datetime] NOT NULL,
[KPDSTHST] [tinyint] NOT NULL,
[KPCALHST] [tinyint] NOT NULL,
[KPERHIST] [tinyint] NOT NULL,
[KPTRXHST] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[Revalue_Customer] [tinyint] NOT NULL,
[Post_Results_To] [smallint] NOT NULL,
[FINCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GOVCRPID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GOVINDID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DISGRPER] [smallint] NOT NULL,
[DUEGRPER] [smallint] NOT NULL,
[DOCFMTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Send_Email_Statements] [tinyint] NOT NULL,
[USERLANG] [smallint] NOT NULL,
[GPSFOINTEGRATIONID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INTEGRATIONSOURCE] [smallint] NOT NULL,
[INTEGRATIONID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORDERFULFILLDEFAULT] [smallint] NOT NULL,
[CUSTPRIORITY] [smallint] NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMOvrpymtWrtoffAcctIdx] [int] NOT NULL,
[SHIPCOMPLETE] [tinyint] NOT NULL,
[CBVAT] [tinyint] NOT NULL,
[INCLUDEINDP] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
