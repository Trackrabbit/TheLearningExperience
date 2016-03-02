CREATE TABLE [dbo].[B4699703]
(
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_AM_Screen_Completed] [datetime] NOT NULL,
[BSSI_AM_Measurement_Comp] [datetime] NOT NULL,
[BSSI_Tower_Detuned] [smallint] NOT NULL,
[BSSI_Phase_I] [datetime] NOT NULL,
[BSSI_Phase_II] [datetime] NOT NULL,
[BSSI_NEPA] [datetime] NOT NULL,
[BSSI_Consultation_7ESA] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Consultations_106NH] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Consultations_Flood] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Consultations_Wetla] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Environmental_Asses] [datetime] NOT NULL,
[BSSI_Zoning_Jurisdiction] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Zoning_Type] [smallint] NOT NULL,
[BSSI_Cond_Zoning] [smallint] NOT NULL,
[BSSI_Completed_Cert] [smallint] NOT NULL,
[BSSI_Airspace_Study] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_AM_Srn_CompletedNI] [numeric] (19, 5) NOT NULL,
[BSSI_AM_Measurements_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Tower_Detuned_NI] [numeric] (19, 5) NOT NULL,
[BSSI_PhaseI_NI] [numeric] (19, 5) NOT NULL,
[BSSI_PhaseII_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Nepa_NI] [numeric] (19, 5) NOT NULL,
[BSSI_7ESA_NI] [numeric] (19, 5) NOT NULL,
[BSSI_NHPA_NI] [numeric] (19, 5) NOT NULL,
[BSSI_FEMA_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Con_Wetland_NI] [numeric] (19, 5) NOT NULL,
[BSSI_FONSI_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Zoning_NI] [numeric] (19, 5) NOT NULL,
[BSSI_1A2C_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Airspace_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Zoning_Type_NI] [numeric] (19, 5) NOT NULL,
[BSSI_Zoning_Cond_NI] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4699703] ADD CONSTRAINT [CK__B4699703__BSSI_A__2C5C4C1E] CHECK ((datepart(hour,[BSSI_AM_Measurement_Comp])=(0) AND datepart(minute,[BSSI_AM_Measurement_Comp])=(0) AND datepart(second,[BSSI_AM_Measurement_Comp])=(0) AND datepart(millisecond,[BSSI_AM_Measurement_Comp])=(0)))
GO
ALTER TABLE [dbo].[B4699703] ADD CONSTRAINT [CK__B4699703__BSSI_A__2B6827E5] CHECK ((datepart(hour,[BSSI_AM_Screen_Completed])=(0) AND datepart(minute,[BSSI_AM_Screen_Completed])=(0) AND datepart(second,[BSSI_AM_Screen_Completed])=(0) AND datepart(millisecond,[BSSI_AM_Screen_Completed])=(0)))
GO
ALTER TABLE [dbo].[B4699703] ADD CONSTRAINT [CK__B4699703__BSSI_E__302CDD02] CHECK ((datepart(hour,[BSSI_Environmental_Asses])=(0) AND datepart(minute,[BSSI_Environmental_Asses])=(0) AND datepart(second,[BSSI_Environmental_Asses])=(0) AND datepart(millisecond,[BSSI_Environmental_Asses])=(0)))
GO
ALTER TABLE [dbo].[B4699703] ADD CONSTRAINT [CK__B4699703__BSSI_N__2F38B8C9] CHECK ((datepart(hour,[BSSI_NEPA])=(0) AND datepart(minute,[BSSI_NEPA])=(0) AND datepart(second,[BSSI_NEPA])=(0) AND datepart(millisecond,[BSSI_NEPA])=(0)))
GO
ALTER TABLE [dbo].[B4699703] ADD CONSTRAINT [CK__B4699703__BSSI_P__2D507057] CHECK ((datepart(hour,[BSSI_Phase_I])=(0) AND datepart(minute,[BSSI_Phase_I])=(0) AND datepart(second,[BSSI_Phase_I])=(0) AND datepart(millisecond,[BSSI_Phase_I])=(0)))
GO
ALTER TABLE [dbo].[B4699703] ADD CONSTRAINT [CK__B4699703__BSSI_P__2E449490] CHECK ((datepart(hour,[BSSI_Phase_II])=(0) AND datepart(minute,[BSSI_Phase_II])=(0) AND datepart(second,[BSSI_Phase_II])=(0) AND datepart(millisecond,[BSSI_Phase_II])=(0)))
GO
ALTER TABLE [dbo].[B4699703] ADD CONSTRAINT [PKB4699703] PRIMARY KEY NONCLUSTERED  ([LOCNCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699703].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4699703].[BSSI_AM_Screen_Completed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4699703].[BSSI_AM_Measurement_Comp]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699703].[BSSI_Tower_Detuned]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4699703].[BSSI_Phase_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4699703].[BSSI_Phase_II]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4699703].[BSSI_NEPA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699703].[BSSI_Consultation_7ESA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699703].[BSSI_Consultations_106NH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699703].[BSSI_Consultations_Flood]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699703].[BSSI_Consultations_Wetla]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4699703].[BSSI_Environmental_Asses]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699703].[BSSI_Zoning_Jurisdiction]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699703].[BSSI_Zoning_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699703].[BSSI_Cond_Zoning]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4699703].[BSSI_Completed_Cert]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4699703].[BSSI_Airspace_Study]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_AM_Srn_CompletedNI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_AM_Measurements_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_Tower_Detuned_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_PhaseI_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_PhaseII_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_Nepa_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_7ESA_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_NHPA_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_FEMA_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_Con_Wetland_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_FONSI_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_Zoning_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_1A2C_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_Airspace_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_Zoning_Type_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[BSSI_Zoning_Cond_NI]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4699703].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[B4699703] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4699703] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4699703] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4699703] TO [DYNGRP]
GO
