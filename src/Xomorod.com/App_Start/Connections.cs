

namespace AdoManager
{
	public class Connections
	{
		 
		public static AdoManager.ConnectionManager Xomorod { get { return ConnectionManager.Find("Xomorod"); } }
		 
		public static AdoManager.ConnectionManager XomorodServerSide { get { return ConnectionManager.Find("XomorodServerSide"); } }
		
	}
}