USE [s16guest37]
GO
/****** Object:  Table [dbo].[branch]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[branch](
	[branchId] [int] NOT NULL,
	[branchName] [varchar](50) NOT NULL,
	[branchLevel] [int] NOT NULL,
	[developmentVersionId] [int] NOT NULL,
 CONSTRAINT [PK_branch] PRIMARY KEY CLUSTERED 
(
	[branchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[commentLog]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[commentLog](
	[commentId] [int] NOT NULL,
	[customerId] [int] NOT NULL,
	[customerReleaseId] [int] NOT NULL,
	[commentType] [varchar](25) NOT NULL,
	[commentContent] [varchar](500) NOT NULL,
	[commentDate] [date] NOT NULL,
 CONSTRAINT [PK_commentLog] PRIMARY KEY CLUSTERED 
(
	[commentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[company]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[company](
	[companyId] [int] NOT NULL,
	[companyName] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[companyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customer]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customerId] [int] NOT NULL,
	[customerCompanyId] [int] NOT NULL,
	[customerPhoneId] [int] NOT NULL,
 CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED 
(
	[customerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[customerCompany]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customerCompany](
	[customerCompanyId] [int] NOT NULL,
	[customerCompanyName] [varchar](50) NOT NULL,
	[customerCompanyAddressId] [int] NOT NULL,
 CONSTRAINT [PK_customerCompany] PRIMARY KEY CLUSTERED 
(
	[customerCompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customerCompanyAddress]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customerCompanyAddress](
	[customerCompanyAddressId] [int] NOT NULL,
	[customerCompanyZipCode] [varchar](20) NULL,
	[customerCompanyZipCodeFour] [varchar](6) NULL,
	[customerCompanyCountryId] [int] NOT NULL,
	[customerCompanyStreet] [varchar](50) NULL,
 CONSTRAINT [PK_customerCompanyAddress] PRIMARY KEY CLUSTERED 
(
	[customerCompanyAddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customerCompanyCity]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customerCompanyCity](
	[customerCompanyCityId] [int] NOT NULL,
	[customerCompanyCityName] [varchar](50) NULL,
 CONSTRAINT [PK_customerCompanyCity] PRIMARY KEY CLUSTERED 
(
	[customerCompanyCityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customerCompanyCountry]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customerCompanyCountry](
	[customerCompanyCountryId] [int] NOT NULL,
	[customerCompanyCountryName] [varchar](50) NOT NULL,
	[customerCompanyCountryCode] [varchar](10) NOT NULL,
	[customerCompanyStateId] [int] NOT NULL,
 CONSTRAINT [PK_customerCompanyCountry] PRIMARY KEY CLUSTERED 
(
	[customerCompanyCountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customerCompanyState]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customerCompanyState](
	[customerCompanyStateId] [int] NOT NULL,
	[customerCompanyStateName] [varchar](50) NULL,
	[customerCompanyStateCode] [varchar](10) NULL,
	[customerCompanyCityId] [int] NOT NULL,
 CONSTRAINT [PK_customerCompanyState] PRIMARY KEY CLUSTERED 
(
	[customerCompanyStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customerPhone]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customerPhone](
	[customerPhoneId] [int] NOT NULL,
	[customerPhoneTypeId] [int] NOT NULL,
 CONSTRAINT [PK_customerPhone] PRIMARY KEY CLUSTERED 
(
	[customerPhoneId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[customerPhoneType]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customerPhoneType](
	[customerPhoneTypeId] [int] NOT NULL,
	[customerPhoneTypeName] [varchar](15) NOT NULL,
	[customerPhoneTypeNumber] [varchar](20) NOT NULL,
 CONSTRAINT [PK_customerPhoneType] PRIMARY KEY CLUSTERED 
(
	[customerPhoneTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[customerRelease]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[customerRelease](
	[customerReleaseId] [int] NOT NULL,
	[customerReleaseNumber] [varchar](15) NOT NULL,
	[customerReleaseDate] [date] NOT NULL,
	[developmentVersionId] [int] NOT NULL,
	[releaseType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_customerRelease] PRIMARY KEY CLUSTERED 
(
	[customerReleaseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[developer]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[developer](
	[developerId] [int] NOT NULL,
	[devFirstName] [varchar](25) NOT NULL,
	[devLastName] [varchar](25) NOT NULL,
	[devDateOfBirth] [date] NOT NULL,
	[companyId] [int] NOT NULL,
	[productId] [int] NOT NULL,
 CONSTRAINT [PK_Developer] PRIMARY KEY CLUSTERED 
(
	[developerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[developmentVersion]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[developmentVersion](
	[developmentVersionId] [int] NOT NULL,
	[developmentVersionNum] [varchar](15) NOT NULL,
	[developmentReleaseDate] [date] NOT NULL,
	[versionId] [int] NOT NULL,
 CONSTRAINT [PK_Development Version] PRIMARY KEY CLUSTERED 
(
	[developmentVersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[downloadLog]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[downloadLog](
	[downloadLogId] [int] NOT NULL,
	[customerId] [int] NOT NULL,
	[downloadDate] [date] NOT NULL,
	[customerReleaseId] [int] NOT NULL,
 CONSTRAINT [PK_downloadLog] PRIMARY KEY CLUSTERED 
(
	[downloadLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[feature]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[feature](
	[featureId] [int] NOT NULL,
	[developmentVersionId] [int] NOT NULL,
	[featureDescription] [varchar](500) NOT NULL,
	[featureDate] [date] NOT NULL,
 CONSTRAINT [PK_feature] PRIMARY KEY CLUSTERED 
(
	[featureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[iteration]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[iteration](
	[iterationId] [int] NOT NULL,
	[developmentVersionId] [int] NOT NULL,
	[commitPush] [varchar](50) NOT NULL,
	[iterationName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_iteration] PRIMARY KEY CLUSTERED 
(
	[iterationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[platform]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[platform](
	[platformId] [int] NOT NULL,
	[platformName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Platform] PRIMARY KEY CLUSTERED 
(
	[platformId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[product](
	[productId] [int] NOT NULL,
	[productName] [varchar](30) NOT NULL,
	[productDescription] [varchar](1000) NOT NULL,
	[companyId] [int] NOT NULL,
	[platformId] [int] NOT NULL,
	[developerId] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[productId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[subscriptionCustomer]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[subscriptionCustomer](
	[subscriptionId] [int] NOT NULL,
	[customerFirstName] [varchar](25) NOT NULL,
	[customerLastName] [varchar](25) NOT NULL,
	[customerEmail] [varchar](80) NOT NULL,
	[companyId] [int] NOT NULL,
	[customerUsername] [varchar](20) NOT NULL,
	[customerId] [int] NOT NULL,
 CONSTRAINT [PK_subscriptionCustomer] PRIMARY KEY CLUSTERED 
(
	[subscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[version]    Script Date: 5/5/2016 5:40:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[version](
	[versionId] [int] NOT NULL,
	[versionNumber] [varchar](5) NOT NULL,
	[productId] [int] NOT NULL,
 CONSTRAINT [PK_version] PRIMARY KEY CLUSTERED 
(
	[versionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[company] ([companyId], [companyName]) VALUES (1, N'MedRecords')
INSERT [dbo].[customer] ([customerId], [customerCompanyId], [customerPhoneId]) VALUES (1, 1, 1)
INSERT [dbo].[customer] ([customerId], [customerCompanyId], [customerPhoneId]) VALUES (2, 2, 2)
INSERT [dbo].[customer] ([customerId], [customerCompanyId], [customerPhoneId]) VALUES (3, 3, 3)
INSERT [dbo].[customer] ([customerId], [customerCompanyId], [customerPhoneId]) VALUES (4, 4, 4)
INSERT [dbo].[customerCompany] ([customerCompanyId], [customerCompanyName], [customerCompanyAddressId]) VALUES (1, N'ABC Records', 1)
INSERT [dbo].[customerCompany] ([customerCompanyId], [customerCompanyName], [customerCompanyAddressId]) VALUES (2, N'ZYX Corp', 2)
INSERT [dbo].[customerCompany] ([customerCompanyId], [customerCompanyName], [customerCompanyAddressId]) VALUES (3, N'99 Store', 3)
INSERT [dbo].[customerCompany] ([customerCompanyId], [customerCompanyName], [customerCompanyAddressId]) VALUES (4, N'99 Store', 4)
INSERT [dbo].[customerCompanyAddress] ([customerCompanyAddressId], [customerCompanyZipCode], [customerCompanyZipCodeFour], [customerCompanyCountryId], [customerCompanyStreet]) VALUES (1, N'91601', N'', 1, N'123 Privet Street')
INSERT [dbo].[customerCompanyAddress] ([customerCompanyAddressId], [customerCompanyZipCode], [customerCompanyZipCodeFour], [customerCompanyCountryId], [customerCompanyStreet]) VALUES (2, N'', N'', 2, N'348 Jinx Road')
INSERT [dbo].[customerCompanyAddress] ([customerCompanyAddressId], [customerCompanyZipCode], [customerCompanyZipCodeFour], [customerCompanyCountryId], [customerCompanyStreet]) VALUES (3, N'', N'', 3, N'')
INSERT [dbo].[customerCompanyAddress] ([customerCompanyAddressId], [customerCompanyZipCode], [customerCompanyZipCodeFour], [customerCompanyCountryId], [customerCompanyStreet]) VALUES (4, N'', N'', 4, N'')
INSERT [dbo].[customerCompanyCity] ([customerCompanyCityId], [customerCompanyCityName]) VALUES (1, N'Los Angeles')
INSERT [dbo].[customerCompanyCity] ([customerCompanyCityId], [customerCompanyCityName]) VALUES (2, N'')
INSERT [dbo].[customerCompanyCity] ([customerCompanyCityId], [customerCompanyCityName]) VALUES (3, N'')
INSERT [dbo].[customerCompanyCity] ([customerCompanyCityId], [customerCompanyCityName]) VALUES (4, N'')
INSERT [dbo].[customerCompanyCountry] ([customerCompanyCountryId], [customerCompanyCountryName], [customerCompanyCountryCode], [customerCompanyStateId]) VALUES (1, N'United States', N'USA', 1)
INSERT [dbo].[customerCompanyCountry] ([customerCompanyCountryId], [customerCompanyCountryName], [customerCompanyCountryCode], [customerCompanyStateId]) VALUES (2, N'England', N'ENG', 2)
INSERT [dbo].[customerCompanyCountry] ([customerCompanyCountryId], [customerCompanyCountryName], [customerCompanyCountryCode], [customerCompanyStateId]) VALUES (3, N'', N'', 3)
INSERT [dbo].[customerCompanyCountry] ([customerCompanyCountryId], [customerCompanyCountryName], [customerCompanyCountryCode], [customerCompanyStateId]) VALUES (4, N'', N'', 4)
INSERT [dbo].[customerCompanyState] ([customerCompanyStateId], [customerCompanyStateName], [customerCompanyStateCode], [customerCompanyCityId]) VALUES (1, N'California', N'CA', 1)
INSERT [dbo].[customerCompanyState] ([customerCompanyStateId], [customerCompanyStateName], [customerCompanyStateCode], [customerCompanyCityId]) VALUES (2, N'London', N'LDN', 2)
INSERT [dbo].[customerCompanyState] ([customerCompanyStateId], [customerCompanyStateName], [customerCompanyStateCode], [customerCompanyCityId]) VALUES (3, N'', N'', 3)
INSERT [dbo].[customerCompanyState] ([customerCompanyStateId], [customerCompanyStateName], [customerCompanyStateCode], [customerCompanyCityId]) VALUES (4, N'', N'', 4)
INSERT [dbo].[customerPhone] ([customerPhoneId], [customerPhoneTypeId]) VALUES (1, 1)
INSERT [dbo].[customerPhone] ([customerPhoneId], [customerPhoneTypeId]) VALUES (2, 2)
INSERT [dbo].[customerPhone] ([customerPhoneId], [customerPhoneTypeId]) VALUES (3, 3)
INSERT [dbo].[customerPhone] ([customerPhoneId], [customerPhoneTypeId]) VALUES (4, 4)
INSERT [dbo].[customerPhoneType] ([customerPhoneTypeId], [customerPhoneTypeName], [customerPhoneTypeNumber]) VALUES (1, N'work', N'123-485-8973')
INSERT [dbo].[customerPhoneType] ([customerPhoneTypeId], [customerPhoneTypeName], [customerPhoneTypeNumber]) VALUES (2, N'work', N'1-28-397863896')
INSERT [dbo].[customerPhoneType] ([customerPhoneTypeId], [customerPhoneTypeName], [customerPhoneTypeNumber]) VALUES (3, N'mobile', N'179-397-87968')
INSERT [dbo].[customerPhoneType] ([customerPhoneTypeId], [customerPhoneTypeName], [customerPhoneTypeNumber]) VALUES (4, N'mobile', N'178-763-98764')
INSERT [dbo].[customerRelease] ([customerReleaseId], [customerReleaseNumber], [customerReleaseDate], [developmentVersionId], [releaseType]) VALUES (1, N'1.1', CAST(0x07240B00 AS Date), 1, N'new product release')
INSERT [dbo].[customerRelease] ([customerReleaseId], [customerReleaseNumber], [customerReleaseDate], [developmentVersionId], [releaseType]) VALUES (2, N'1.1', CAST(0x07240B00 AS Date), 4, N'new product release')
INSERT [dbo].[customerRelease] ([customerReleaseId], [customerReleaseNumber], [customerReleaseDate], [developmentVersionId], [releaseType]) VALUES (3, N'2.1', CAST(0x80240B00 AS Date), 2, N'new features release')
INSERT [dbo].[customerRelease] ([customerReleaseId], [customerReleaseNumber], [customerReleaseDate], [developmentVersionId], [releaseType]) VALUES (4, N'2.1', CAST(0x80240B00 AS Date), 3, N'new features release')
INSERT [dbo].[customerRelease] ([customerReleaseId], [customerReleaseNumber], [customerReleaseDate], [developmentVersionId], [releaseType]) VALUES (5, N'2.2', CAST(0xAB240B00 AS Date), 3, N'bug-fix release')
INSERT [dbo].[developmentVersion] ([developmentVersionId], [developmentVersionNum], [developmentReleaseDate], [versionId]) VALUES (1, N'1.1', CAST(0x07240B00 AS Date), 1)
INSERT [dbo].[developmentVersion] ([developmentVersionId], [developmentVersionNum], [developmentReleaseDate], [versionId]) VALUES (2, N'2.1', CAST(0x80240B00 AS Date), 3)
INSERT [dbo].[developmentVersion] ([developmentVersionId], [developmentVersionNum], [developmentReleaseDate], [versionId]) VALUES (3, N'2.2', CAST(0xAB240B00 AS Date), 4)
INSERT [dbo].[developmentVersion] ([developmentVersionId], [developmentVersionNum], [developmentReleaseDate], [versionId]) VALUES (4, N'1.2', CAST(0x07240B00 AS Date), 2)
INSERT [dbo].[downloadLog] ([downloadLogId], [customerId], [downloadDate], [customerReleaseId]) VALUES (1, 1, CAST(0x9F240B00 AS Date), 4)
INSERT [dbo].[downloadLog] ([downloadLogId], [customerId], [downloadDate], [customerReleaseId]) VALUES (2, 2, CAST(0x43240B00 AS Date), 4)
INSERT [dbo].[downloadLog] ([downloadLogId], [customerId], [downloadDate], [customerReleaseId]) VALUES (3, 3, CAST(0xBD240B00 AS Date), 5)
INSERT [dbo].[downloadLog] ([downloadLogId], [customerId], [downloadDate], [customerReleaseId]) VALUES (4, 4, CAST(0xFB240B00 AS Date), 5)
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (1, 1, N'login module', CAST(0x07240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (2, 1, N'patient registration', CAST(0x07240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (3, 1, N'patient profile', CAST(0x07240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (4, 1, N'patient release form', CAST(0x07240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (5, 1, N'physician profile', CAST(0x07240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (6, 1, N'address verification', CAST(0x07240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (7, 4, N'login module', CAST(0x07240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (8, 4, N'patient registration', CAST(0x07240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (9, 4, N'patient profile', CAST(0x07240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (10, 4, N'patient release form', CAST(0x07240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (11, 4, N'physician profile', CAST(0x07240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (12, 4, N'address verification', CAST(0x07240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (13, 2, N'patient authentication', CAST(0x80240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (14, 2, N'patient medication form', CAST(0x80240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (15, 2, N'patient e-bill', CAST(0x80240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (16, 2, N'patient reporting', CAST(0x80240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (17, 3, N'patient authentication', CAST(0x80240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (18, 3, N'patient medication form', CAST(0x80240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (19, 3, N'patient e-bill', CAST(0x80240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (20, 3, N'patient reporting', CAST(0x80240B00 AS Date))
INSERT [dbo].[feature] ([featureId], [developmentVersionId], [featureDescription], [featureDate]) VALUES (21, 3, N'patient reporting bug fix', CAST(0xAB240B00 AS Date))
INSERT [dbo].[platform] ([platformId], [platformName]) VALUES (1, N'Windows')
INSERT [dbo].[platform] ([platformId], [platformName]) VALUES (2, N'Linux')
INSERT [dbo].[product] ([productId], [productName], [productDescription], [companyId], [platformId], [developerId]) VALUES (1, N'EHR System', N'health records system for the patients', 1, 1, NULL)
INSERT [dbo].[product] ([productId], [productName], [productDescription], [companyId], [platformId], [developerId]) VALUES (2, N'EHR System', N'health records system for the patients', 1, 2, NULL)
INSERT [dbo].[subscriptionCustomer] ([subscriptionId], [customerFirstName], [customerLastName], [customerEmail], [companyId], [customerUsername], [customerId]) VALUES (1, N'Peter', N'Smith', N'p.smith@abc.com', 1, N'peters', 1)
INSERT [dbo].[subscriptionCustomer] ([subscriptionId], [customerFirstName], [customerLastName], [customerEmail], [companyId], [customerUsername], [customerId]) VALUES (2, N'Maria', N'Bounte', N'maria@zyx.com', 1, N'mariab', 2)
INSERT [dbo].[subscriptionCustomer] ([subscriptionId], [customerFirstName], [customerLastName], [customerEmail], [companyId], [customerUsername], [customerId]) VALUES (3, N'David', N'Sommerset', N'david.sommerset@99cents.store', 1, N'sommersetdav', 3)
INSERT [dbo].[subscriptionCustomer] ([subscriptionId], [customerFirstName], [customerLastName], [customerEmail], [companyId], [customerUsername], [customerId]) VALUES (4, N'Maria', N'Bounte', N'maria.bounte@99cents.store', 1, N'bmaria', 4)
INSERT [dbo].[version] ([versionId], [versionNumber], [productId]) VALUES (1, N'1.1', 1)
INSERT [dbo].[version] ([versionId], [versionNumber], [productId]) VALUES (2, N'1.2', 2)
INSERT [dbo].[version] ([versionId], [versionNumber], [productId]) VALUES (3, N'2.1', 1)
INSERT [dbo].[version] ([versionId], [versionNumber], [productId]) VALUES (4, N'2.2', 2)
ALTER TABLE [dbo].[branch]  WITH CHECK ADD  CONSTRAINT [FK_branch_developmentVersion] FOREIGN KEY([developmentVersionId])
REFERENCES [dbo].[developmentVersion] ([developmentVersionId])
GO
ALTER TABLE [dbo].[branch] CHECK CONSTRAINT [FK_branch_developmentVersion]
GO
ALTER TABLE [dbo].[commentLog]  WITH CHECK ADD  CONSTRAINT [FK_commentLog_customer] FOREIGN KEY([customerId])
REFERENCES [dbo].[customer] ([customerId])
GO
ALTER TABLE [dbo].[commentLog] CHECK CONSTRAINT [FK_commentLog_customer]
GO
ALTER TABLE [dbo].[commentLog]  WITH CHECK ADD  CONSTRAINT [FK_commentLog_customerRelease] FOREIGN KEY([customerReleaseId])
REFERENCES [dbo].[customerRelease] ([customerReleaseId])
GO
ALTER TABLE [dbo].[commentLog] CHECK CONSTRAINT [FK_commentLog_customerRelease]
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD  CONSTRAINT [FK_customer_customerCompany] FOREIGN KEY([customerCompanyId])
REFERENCES [dbo].[customerCompany] ([customerCompanyId])
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FK_customer_customerCompany]
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD  CONSTRAINT [FK_customer_customerPhone] FOREIGN KEY([customerPhoneId])
REFERENCES [dbo].[customerPhone] ([customerPhoneId])
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FK_customer_customerPhone]
GO
ALTER TABLE [dbo].[customerCompany]  WITH CHECK ADD  CONSTRAINT [FK_customerCompany_customerCompanyAddress] FOREIGN KEY([customerCompanyAddressId])
REFERENCES [dbo].[customerCompanyAddress] ([customerCompanyAddressId])
GO
ALTER TABLE [dbo].[customerCompany] CHECK CONSTRAINT [FK_customerCompany_customerCompanyAddress]
GO
ALTER TABLE [dbo].[customerCompanyAddress]  WITH CHECK ADD  CONSTRAINT [FK_customerCompanyAddress_customerCompanyCountry] FOREIGN KEY([customerCompanyCountryId])
REFERENCES [dbo].[customerCompanyCountry] ([customerCompanyCountryId])
GO
ALTER TABLE [dbo].[customerCompanyAddress] CHECK CONSTRAINT [FK_customerCompanyAddress_customerCompanyCountry]
GO
ALTER TABLE [dbo].[customerCompanyCountry]  WITH CHECK ADD  CONSTRAINT [FK_customerCompanyCountry_customerCompanyState] FOREIGN KEY([customerCompanyStateId])
REFERENCES [dbo].[customerCompanyState] ([customerCompanyStateId])
GO
ALTER TABLE [dbo].[customerCompanyCountry] CHECK CONSTRAINT [FK_customerCompanyCountry_customerCompanyState]
GO
ALTER TABLE [dbo].[customerCompanyState]  WITH CHECK ADD  CONSTRAINT [FK_customerCompanyState_customerCompanyCity] FOREIGN KEY([customerCompanyCityId])
REFERENCES [dbo].[customerCompanyCity] ([customerCompanyCityId])
GO
ALTER TABLE [dbo].[customerCompanyState] CHECK CONSTRAINT [FK_customerCompanyState_customerCompanyCity]
GO
ALTER TABLE [dbo].[customerPhone]  WITH CHECK ADD  CONSTRAINT [FK_customerPhone_customerPhoneType] FOREIGN KEY([customerPhoneTypeId])
REFERENCES [dbo].[customerPhoneType] ([customerPhoneTypeId])
GO
ALTER TABLE [dbo].[customerPhone] CHECK CONSTRAINT [FK_customerPhone_customerPhoneType]
GO
ALTER TABLE [dbo].[customerRelease]  WITH CHECK ADD  CONSTRAINT [FK_customerRelease_developmentVersion] FOREIGN KEY([developmentVersionId])
REFERENCES [dbo].[developmentVersion] ([developmentVersionId])
GO
ALTER TABLE [dbo].[customerRelease] CHECK CONSTRAINT [FK_customerRelease_developmentVersion]
GO
ALTER TABLE [dbo].[developer]  WITH CHECK ADD  CONSTRAINT [FK_Developer_Company] FOREIGN KEY([companyId])
REFERENCES [dbo].[company] ([companyId])
GO
ALTER TABLE [dbo].[developer] CHECK CONSTRAINT [FK_Developer_Company]
GO
ALTER TABLE [dbo].[developer]  WITH CHECK ADD  CONSTRAINT [FK_Developer_Product] FOREIGN KEY([productId])
REFERENCES [dbo].[product] ([productId])
GO
ALTER TABLE [dbo].[developer] CHECK CONSTRAINT [FK_Developer_Product]
GO
ALTER TABLE [dbo].[developmentVersion]  WITH CHECK ADD  CONSTRAINT [FK_developmentVersion_version] FOREIGN KEY([versionId])
REFERENCES [dbo].[version] ([versionId])
GO
ALTER TABLE [dbo].[developmentVersion] CHECK CONSTRAINT [FK_developmentVersion_version]
GO
ALTER TABLE [dbo].[downloadLog]  WITH CHECK ADD  CONSTRAINT [FK_downloadLog_customer] FOREIGN KEY([customerId])
REFERENCES [dbo].[customer] ([customerId])
GO
ALTER TABLE [dbo].[downloadLog] CHECK CONSTRAINT [FK_downloadLog_customer]
GO
ALTER TABLE [dbo].[downloadLog]  WITH CHECK ADD  CONSTRAINT [FK_downloadLog_customerRelease] FOREIGN KEY([customerReleaseId])
REFERENCES [dbo].[customerRelease] ([customerReleaseId])
GO
ALTER TABLE [dbo].[downloadLog] CHECK CONSTRAINT [FK_downloadLog_customerRelease]
GO
ALTER TABLE [dbo].[feature]  WITH CHECK ADD  CONSTRAINT [FK_feature_developmentVersion] FOREIGN KEY([developmentVersionId])
REFERENCES [dbo].[developmentVersion] ([developmentVersionId])
GO
ALTER TABLE [dbo].[feature] CHECK CONSTRAINT [FK_feature_developmentVersion]
GO
ALTER TABLE [dbo].[iteration]  WITH CHECK ADD  CONSTRAINT [FK_iteration_developmentVersion] FOREIGN KEY([developmentVersionId])
REFERENCES [dbo].[developmentVersion] ([developmentVersionId])
GO
ALTER TABLE [dbo].[iteration] CHECK CONSTRAINT [FK_iteration_developmentVersion]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Company] FOREIGN KEY([companyId])
REFERENCES [dbo].[company] ([companyId])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_Product_Company]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Developer] FOREIGN KEY([developerId])
REFERENCES [dbo].[developer] ([developerId])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_Product_Developer]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Platform] FOREIGN KEY([platformId])
REFERENCES [dbo].[platform] ([platformId])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_Product_Platform]
GO
ALTER TABLE [dbo].[subscriptionCustomer]  WITH CHECK ADD  CONSTRAINT [FK_subscriptionCustomer_Company] FOREIGN KEY([companyId])
REFERENCES [dbo].[company] ([companyId])
GO
ALTER TABLE [dbo].[subscriptionCustomer] CHECK CONSTRAINT [FK_subscriptionCustomer_Company]
GO
ALTER TABLE [dbo].[subscriptionCustomer]  WITH CHECK ADD  CONSTRAINT [FK_subscriptionCustomer_customer] FOREIGN KEY([customerId])
REFERENCES [dbo].[customer] ([customerId])
GO
ALTER TABLE [dbo].[subscriptionCustomer] CHECK CONSTRAINT [FK_subscriptionCustomer_customer]
GO
ALTER TABLE [dbo].[version]  WITH CHECK ADD  CONSTRAINT [FK_version_product] FOREIGN KEY([productId])
REFERENCES [dbo].[product] ([productId])
GO
ALTER TABLE [dbo].[version] CHECK CONSTRAINT [FK_version_product]
GO
