using System;
using System.Data.Sql;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DataAccessLayer
{
    public class SchemaReader
    {
		string root;

		public SchemaReader(string root)
		{
			this.root = root;
		}

		public JsonRelation doshit(){

			SqlConnection sqlConnection1 = new SqlConnection("Data Source=.;Initial Catalog=Development;Integrated Security=True");
			SqlCommand cmd = new SqlCommand();
			SqlDataReader reader;
			//TO DO : get search from user and replace Persons table
			cmd.CommandText = @"select 
									ddt1.TableName as ForeignTable, 
									ddc1.ColumnName as ForeignKey,
									DDT2.TableName as PrimaryTable,
									ddc2.ColumnName as PrimaryKey
								from DDReferences DDR
								join DDReferenceColumns DDRC on DDRC.DDReference = DDR.ID
								join DDTables DDT1 on ddt1.ID = ddr.DDTable
								join DDTables DDT2 on ddt2.ID = ddr.DDTargetTable
								join DDColumns DDC1 on ddc1.ID = ddrc.DDColumn
								join DDColumns DDC2 on ddc2.ID = ddrc.DDTargetColumn
								where ddt1.TableName = 'Persons'
								or ddt2.TableName = 'Persons'
								order by 1";
			cmd.CommandType = System.Data.CommandType.Text;
			cmd.Connection = sqlConnection1;

			sqlConnection1.Open();

			reader = cmd.ExecuteReader();
			// Data is accessible through the DataReader object here.
			//JsonRelation mainData = new JsonRelation("Persons");

			List<Node> nodes = new List<Node>();
			List<Link> links = new List<Link>();

			nodes.Add(new Node {name = root, group = 1});
			int index = 1;

			//List<Relation> relations = new List<Relation>();

			while (reader.Read())
			{
				if (reader.GetValue(0).ToString() == root)
				{

					nodes.Add(new Node() {name = reader.GetValue(2).ToString(), group = 2});
					links.Add(new Link() { source = 0, target = index });

				}else{

					nodes.Add(new Node() {name = reader.GetValue(0).ToString(), group = 3});
					links.Add(new Link() { source = index, target = 0 });
				}

				index += 1;

				//Relation currentRelation = new Relation();
				//currentRelation.ForeignTable = reader.GetValue(0).ToString();
				//currentRelation.ForeignKey = reader.GetValue(1).ToString();
				//currentRelation.PrimaryTable = reader.GetValue(2).ToString();
				//currentRelation.PrimaryKey = reader.GetValue(3).ToString();

				//relations.Add(currentRelation);
			}

			JsonRelation mainData = new JsonRelation(nodes.ToArray(), links.ToArray());

			sqlConnection1.Close();
			return mainData;
		}
		
    }
}
