using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataAccessLayer;

namespace TestClient
{
	class Program
	{
		static void Main(string[] args)
		{
			SchemaReader rdr = new SchemaReader("Persons");
			JsonRelation relations = rdr.doshit();
			System.IO.File.AppendAllText("result.json", relations.ToJSON());

			//foreach (Relation relation in relations){

			//	Console.WriteLine("FT: " + relation.ForeignTable);
			//	Console.WriteLine("FK: " + relation.ForeignKey);
			//	Console.WriteLine("PT: " + relation.PrimaryTable); 
			//	Console.WriteLine("PK: " + relation.PrimaryKey);
			//	Console.WriteLine("\n=============\n");
			//}
		}
	}
}
