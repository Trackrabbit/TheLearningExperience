CREATE TABLE [dbo].[BE040100]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IC_Instance_Number_I] [smallint] NOT NULL,
[EFFECTIVEDATE_I] [datetime] NOT NULL,
[LLASTNAME_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FFIRSTNAME_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MI_I] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE_I] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[HOMEPHONE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATEOFBIRTH_I] [datetime] NOT NULL,
[RELATIONSHIP] [smallint] NOT NULL,
[DEPSSN_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SSN_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFITEXPIRE_I] [datetime] NOT NULL,
[BNFBEGDT] [datetime] NOT NULL,
[COBRAQE_I] [smallint] NOT NULL,
[COMMENTSTR20] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IC_Initial_Balance_I] [numeric] (19, 5) NOT NULL,
[COSTCOBRA_I] [numeric] (19, 5) NOT NULL,
[IC_Months_INT_I] [smallint] NOT NULL,
[IC_Cobra_Month_DDL_I] [smallint] NOT NULL,
[IC_Cobra_Dependent_DDL_I] [smallint] NOT NULL,
[IC_Cobra_Employee_DDL_I] [smallint] NOT NULL,
[IBENEFITFREQUENCY_I] [smallint] NOT NULL,
[IC_First_Payment_Date_I] [datetime] NOT NULL,
[IC_Last_Payment_Date_I] [datetime] NOT NULL,
[IC_Auto_Post_CB_I] [tinyint] NOT NULL,
[IC_Next_Auto_Post_Date_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BE040100] ADD CONSTRAINT [CK__BE040100__BENEFI__225652C6] CHECK ((datepart(hour,[BENEFITEXPIRE_I])=(0) AND datepart(minute,[BENEFITEXPIRE_I])=(0) AND datepart(second,[BENEFITEXPIRE_I])=(0) AND datepart(millisecond,[BENEFITEXPIRE_I])=(0)))
GO
ALTER TABLE [dbo].[BE040100] ADD CONSTRAINT [CK__BE040100__BNFBEG__234A76FF] CHECK ((datepart(hour,[BNFBEGDT])=(0) AND datepart(minute,[BNFBEGDT])=(0) AND datepart(second,[BNFBEGDT])=(0) AND datepart(millisecond,[BNFBEGDT])=(0)))
GO
ALTER TABLE [dbo].[BE040100] ADD CONSTRAINT [CK__BE040100__DATEOF__243E9B38] CHECK ((datepart(hour,[DATEOFBIRTH_I])=(0) AND datepart(minute,[DATEOFBIRTH_I])=(0) AND datepart(second,[DATEOFBIRTH_I])=(0) AND datepart(millisecond,[DATEOFBIRTH_I])=(0)))
GO
ALTER TABLE [dbo].[BE040100] ADD CONSTRAINT [CK__BE040100__EFFECT__2532BF71] CHECK ((datepart(hour,[EFFECTIVEDATE_I])=(0) AND datepart(minute,[EFFECTIVEDATE_I])=(0) AND datepart(second,[EFFECTIVEDATE_I])=(0) AND datepart(millisecond,[EFFECTIVEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[BE040100] ADD CONSTRAINT [CK__BE040100__IC_Fir__2626E3AA] CHECK ((datepart(hour,[IC_First_Payment_Date_I])=(0) AND datepart(minute,[IC_First_Payment_Date_I])=(0) AND datepart(second,[IC_First_Payment_Date_I])=(0) AND datepart(millisecond,[IC_First_Payment_Date_I])=(0)))
GO
ALTER TABLE [dbo].[BE040100] ADD CONSTRAINT [CK__BE040100__IC_Las__271B07E3] CHECK ((datepart(hour,[IC_Last_Payment_Date_I])=(0) AND datepart(minute,[IC_Last_Payment_Date_I])=(0) AND datepart(second,[IC_Last_Payment_Date_I])=(0) AND datepart(millisecond,[IC_Last_Payment_Date_I])=(0)))
GO
ALTER TABLE [dbo].[BE040100] ADD CONSTRAINT [CK__BE040100__IC_Nex__280F2C1C] CHECK ((datepart(hour,[IC_Next_Auto_Post_Date_I])=(0) AND datepart(minute,[IC_Next_Auto_Post_Date_I])=(0) AND datepart(second,[IC_Next_Auto_Post_Date_I])=(0) AND datepart(millisecond,[IC_Next_Auto_Post_Date_I])=(0)))
GO
ALTER TABLE [dbo].[BE040100] ADD CONSTRAINT [PKBE040100] PRIMARY KEY CLUSTERED  ([EMPID_I], [IC_Instance_Number_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2BE040100] ON [dbo].[BE040100] ([EMPID_I], [EFFECTIVEDATE_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040100].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE040100].[IC_Instance_Number_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BE040100].[EFFECTIVEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040100].[LLASTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040100].[FFIRSTNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040100].[MI_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040100].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040100].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040100].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040100].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040100].[ZIPCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040100].[HOMEPHONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BE040100].[DATEOFBIRTH_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE040100].[RELATIONSHIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040100].[DEPSSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040100].[SSN_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BE040100].[BENEFITEXPIRE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BE040100].[BNFBEGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE040100].[COBRAQE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040100].[COMMENTSTR20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BE040100].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE040100].[IC_Initial_Balance_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[BE040100].[COSTCOBRA_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE040100].[IC_Months_INT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE040100].[IC_Cobra_Month_DDL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE040100].[IC_Cobra_Dependent_DDL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE040100].[IC_Cobra_Employee_DDL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE040100].[IBENEFITFREQUENCY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BE040100].[IC_First_Payment_Date_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BE040100].[IC_Last_Payment_Date_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BE040100].[IC_Auto_Post_CB_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BE040100].[IC_Next_Auto_Post_Date_I]'
GO
GRANT SELECT ON  [dbo].[BE040100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BE040100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BE040100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BE040100] TO [DYNGRP]
GO
