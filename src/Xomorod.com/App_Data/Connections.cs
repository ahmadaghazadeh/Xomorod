using System;
using System.IO;

namespace AdoManager
{
	public static class Connections
	{
		
			static Connections()
			{
				// Set Database Connetion from [Web.config] or [App.config]
				var data = File.ReadAllText(AppDomain.CurrentDomain.BaseDirectory + "Web.Config");
			
				// load connections from config to AdoManager connections location
				ConnectionManager.LoadFromXml(data);
			}

			 
			public static AdoManager.ConnectionManager Xomorod { get { return ConnectionManager.Find("Xomorod"); } }
			 
			public static AdoManager.ConnectionManager XomorodServerSide { get { return ConnectionManager.Find("XomorodServerSide"); } }
				}
}