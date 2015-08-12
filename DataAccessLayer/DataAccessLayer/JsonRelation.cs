using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Script.Serialization;

namespace DataAccessLayer
{
	public class JsonRelation
	{
		public Node[] nodes { get; set; }
		public Link[] links { get; set; }
		//public string root { get; set; }

		public JsonRelation(Node[] nodes, Link[] links)
		{
			this.nodes = nodes;
			this.links = links;
		}

		public string ToJSON(){
			return new JavaScriptSerializer().Serialize(this);
		}
		
		
	}
}
