USE [s16guest37]
GO
/****** Object:  Table [dbo].[branch]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[commentLog]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[company]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[customer]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[customerCompany]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[customerCompanyAddress]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[customerCompanyCity]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[customerCompanyCountry]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[customerCompanyState]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[customerPhone]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[customerPhoneType]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[customerRelease]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[developer]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[developmentVersion]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[downloadLog]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[feature]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[iteration]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[platform]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[product]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[subscriptionCustomer]    Script Date: 5/5/2016 5:36:13 PM ******/
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
/****** Object:  Table [dbo].[version]    Script Date: 5/5/2016 5:36:13 PM ******/
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
