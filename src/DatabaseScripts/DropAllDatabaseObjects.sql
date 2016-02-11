USE [Xomorod]
GO
/****** Object:  UserDefinedFunction [dbo].[udfv_PortfoliosView]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udfv_PortfoliosView]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udfv_PortfoliosView]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssResources]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_RssResources]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_RssResources]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_RssCategories]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_RssCategories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_RssCategories]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_Portfolios]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_Portfolios]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_Portfolios]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_CheckUserPass]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_CheckUserPass]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_CheckUserPass]
GO
/****** Object:  UserDefinedFunction [dbo].[fn_GetCategoryChilds]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_GetCategoryChilds]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fn_GetCategoryChilds]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_CategoriesChilds]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_CategoriesChilds]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_CategoriesChilds]
GO
/****** Object:  UserDefinedFunction [dbo].[udft_Categories]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[udft_Categories]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[udft_Categories]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[UserInRoles]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInRoles]') AND type in (N'U'))
DROP TABLE [dbo].[UserInRoles]
GO
/****** Object:  Table [dbo].[RssResources_ContentProviders]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssResources_ContentProviders]') AND type in (N'U'))
DROP TABLE [dbo].[RssResources_ContentProviders]
GO
/****** Object:  Table [dbo].[RssResources]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssResources]') AND type in (N'U'))
DROP TABLE [dbo].[RssResources]
GO
/****** Object:  Table [dbo].[RssFeeds]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssFeeds]') AND type in (N'U'))
DROP TABLE [dbo].[RssFeeds]
GO
/****** Object:  Table [dbo].[RssContentProviders]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssContentProviders]') AND type in (N'U'))
DROP TABLE [dbo].[RssContentProviders]
GO
/****** Object:  Table [dbo].[RssCategories]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RssCategories]') AND type in (N'U'))
DROP TABLE [dbo].[RssCategories]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Roles]') AND type in (N'U'))
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Resources]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Resources]') AND type in (N'U'))
DROP TABLE [dbo].[Resources]
GO
/****** Object:  Table [dbo].[PortfoliosComment]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortfoliosComment]') AND type in (N'U'))
DROP TABLE [dbo].[PortfoliosComment]
GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Portfolios]') AND type in (N'U'))
DROP TABLE [dbo].[Portfolios]
GO
/****** Object:  Table [dbo].[PortfolioCategories]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PortfolioCategories]') AND type in (N'U'))
DROP TABLE [dbo].[PortfolioCategories]
GO
/****** Object:  Table [dbo].[LogHistory]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LogHistory]') AND type in (N'U'))
DROP TABLE [dbo].[LogHistory]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Languages]') AND type in (N'U'))
DROP TABLE [dbo].[Languages]
GO
/****** Object:  Table [dbo].[ExtraLinks]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ExtraLinks]') AND type in (N'U'))
DROP TABLE [dbo].[ExtraLinks]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ErrorLog]') AND type in (N'U'))
DROP TABLE [dbo].[ErrorLog]
GO
/****** Object:  Table [dbo].[CategoriesChilds]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategoriesChilds]') AND type in (N'U'))
DROP TABLE [dbo].[CategoriesChilds]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[AppSetting]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppSetting]') AND type in (N'U'))
DROP TABLE [dbo].[AppSetting]
GO
/****** Object:  UserDefinedFunction [dbo].[GetStringHashing]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetStringHashing]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetStringHashing]
GO
/****** Object:  UserDefinedFunction [dbo].[GetSettingByKey]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetSettingByKey]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetSettingByKey]
GO
/****** Object:  UserDefinedFunction [dbo].[GetResourceLinkByElementID]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetResourceLinkByElementID]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetResourceLinkByElementID]
GO
/****** Object:  UserDefinedFunction [dbo].[GetExtraLinkByName]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GetExtraLinkByName]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[GetExtraLinkByName]
GO
/****** Object:  StoredProcedure [dbo].[sp_Users_Insert]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Users_Insert]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Users_Insert]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertErrorLog]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_InsertErrorLog]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_InsertErrorLog]
GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_RssItem]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Insert_RssItem]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Insert_RssItem]
GO
/****** Object:  StoredProcedure [dbo].[sp_Increase_RssScore]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Increase_RssScore]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Increase_RssScore]
GO
/****** Object:  StoredProcedure [dbo].[sp_CatchError]    Script Date: 2/11/2016 10:48:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_CatchError]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_CatchError]
GO
