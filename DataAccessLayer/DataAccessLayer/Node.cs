using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
	public class Node
	{
		public string name { get; set; }
		public int group { get; set; }
		public string relationDescription { get; set; }
		public ColumnData[] ColumnData { get; set; }
	}
}
