using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
	public class Relation
	{
		//source of the ID
		public string PrimaryTable { get; set; }
		public string PrimaryKey { get; set; }

		//table where the ID is used
		public string ForeignTable { get; set; }
		public string ForeignKey { get; set; }

	}
}
