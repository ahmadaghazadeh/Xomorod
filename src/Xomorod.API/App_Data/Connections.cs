﻿
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
//
//     This file is a T4 Text Templete for generate automatically your 
//     connection strings in from "App.config" or "Web.config" files.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.IO;
using AdoManager;

internal static partial class Connections
{
	
		static Connections()
		{
			// Set Database Connetion from App.Config or Web Config
			var data = File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + "Web.Config");
			
			// load connections from config to AdoManager connections location
			AdoManager.ConnectionManager.LoadFromXml(data);
		}

		 
		public static AdoManager.ConnectionManager Xomorod { get { return ConnectionManager.Find("Xomorod"); } }
		 
		public static AdoManager.ConnectionManager XomorodServerSide { get { return ConnectionManager.Find("XomorodServerSide"); } }
		
}